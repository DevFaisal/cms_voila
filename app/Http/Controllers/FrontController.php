<?php

namespace App\Http\Controllers;

use App\Category;
use \DB;
use Illuminate\Http\Request;
use CRUDBooster;
use Hamcrest\Arrays\IsArray;

class FrontController extends Controller
{
    public $lang;
    public function __construct()
    {
        // /\App::setLocale(session()->get('locale'));
    }

    public function index()
    {

         $this->lang = (\App::getLocale()) ? \App::getLocale() : 'en';

        $seo = DB::table('seo')->where([
            'model' => 'home',
            'model_id' => null,
        ])->first();

        $data["highlights"] = DB::table("highlights")->select(
            'name_' . $this->lang . ' as name',
            'label_' . $this->lang . ' as label',
            'description_' . $this->lang . ' as description',
            'link',
            'image',
            'id'
        )->where([
            'active' => 1,
        ])->orderBy('sorting', 'asc')->get();

        $data["why_us"] = DB::table("why_us")->select(
            'desc_' . $this->lang . ' as desc',
            'image',
            'link',
            'id'
        )->where([
            'active' => 1,
        ])->orderBy('sorting', 'asc')->limit(5)->get();

        $data["about_us"] = DB::table("about_us")->select(
            'desc_' . $this->lang . ' as desc',
            'image',
            'id'
        )->where([
            'active' => 1,
        ])->first();

        $data["products"] = DB::table("categories")->select(
            'name_' . $this->lang . ' as name',
            'breif_' . $this->lang . ' as breif',
            'image',
            'id'
        )->where([
            'active' => 1,
            'parent_id'=>0
        ])->orderBy('sorting', 'asc')->limit(3)->get();


        $data["projects"] = DB::table("projects")->select(
            'name_' . $this->lang . ' as name',
            'desc_' . $this->lang . ' as desc',
            'image',
            'id'
        )->where([
            'active' => 1,
        ])->orderBy('sorting', 'asc')->limit(6)->get();

        $data["distributors"] = DB::table("distributors")->select(
            'name_' . $this->lang . ' as name',
            'link',
            'image',
            'id'
        )->where([
            'active' => 1,
        ])->orderBy('sorting', 'asc')->get();


        $data["news"] = DB::table("news")->select(
            'name_' . $this->lang . ' as name',
            'breif_' . $this->lang . ' as breif',
            'image',
            'id'
        )->where([
            'active' => 1,
        ])->orderBy('sorting', 'asc')->limit(3)->get();

        $data["count_projects"] = DB::table("count_projects")->select(
            'name_' . $this->lang . ' as name',
            'count',
            'id'
        )->where([
            'active' => 1,
        ])->orderBy('sorting', 'asc')->limit(3)->get();



        $arr = array('data' => $data, 'seo' => $seo);

        return view('front.index', $arr);
    }
    
    
    
     
    
    
 public function terms()
    {

        $this->lang = (\App::getLocale()) ? \App::getLocale() : 'en';
        $data["cover"]=DB::table("highlight_pages")->where([
          "cms_moduls_id"=>82,
          "active"=>1
        
        ])->first();

        $seo = DB::table('seo')->where([
            'model' => 'terms',
            'model_id' => null,
        ])->first();

        $data["about_us"] = DB::table("terms")->select(
            'desc_' . $this->lang . ' as desc',
           
            'id'
        )->where([
            'active' => 1,
        ])->first();
        $arr = array('data' => $data, 'seo' => $seo);


        return view('front.terms', $arr);
    }
    
    public function getCategoriesParents($category_id)
    {
        $category=Category::find($category_id);
        $categories=[];
        $c=0;
        $base_categories=DB::table("categories")->where("active",1)->where("parent_id",$category->id)->get();
       
       foreach($base_categories as $item){
       $item->selected=false;
       $item->level=$c;
       
       }
       
      foreach($base_categories as $ii){
        
        $categories[]=$ii;
        }
      if(count($base_categories)>0) $c++;
      
        $base_categories=DB::table("categories")->where("active",1)->where("parent_id",$category->parent_id)->get();

       foreach($base_categories as $item){
       if($item->id==$category->id){
         $item->selected=true;

       }
       else{
        $item->selected=false;

       }
       $item->level=$c;
       
       }
     if(count($base_categories)>0) $c++;

       
      foreach($base_categories as $ii){
        
        $categories[]=$ii;
        }
        
       

        //dd($category->getParentsAttribute());
        foreach($category->getParentsAttribute() as $key=>$item){
       
        $data_categories=DB::table("categories")->where("active",1)->where("parent_id",$item->parent_id)->get();
        
        foreach($data_categories as $i){
        $i->level=$c;
        if($i->id == $item->id){
        $i->selected=true;
        }
        else{
        $i->selected=false;
        
        }
       
       
        }
        
        foreach($data_categories as $ii){
        
        $categories[]=$ii;
        }
        
        
               $c++;

       
       
       }
       
        
        
        
     
        $c--;
        $arr=array("data"=>$categories,"max"=>$c);
        //dd($arr);

       return $arr;
        
       

    }
    
    public function products(Request $request)
    {

        $category = $request->input('category') ?: null;

        $this->lang = (\App::getLocale()) ? \App::getLocale() : 'en';

        $seo = DB::table('seo')->where([
            'model' => 'products',
            'model_id' => null,
        ])->first();
        
         $data["cover"]=DB::table("highlight_pages")->where([
          "cms_moduls_id"=>70,
          "active"=>1
        
        ])->first();
        

	$data["count_products"]=DB::table("products")->count();
        $data["base_categories"] = DB::table('categories')->select(
            'name_' . $this->lang . ' as name',
            'id'
        )->where([
            'parent_id' => 0,
            'active' => 1
        ])->orderBy('sorting', 'asc')->get();

        if ($category && $category!=-1 && $category!=-2) {
            $data["categories_filter"]=$this->getCategoriesParents($category)["data"];
            $data["max_level"]=$this->getCategoriesParents($category)["max"];

            $category_orginal=Category::find($category);

            if($category_orginal){
                $list_categories=$category_orginal->getAllChildren()->pluck('id');
            }
            $list_categories[]=(int) $category;


            $data["products"] = DB::table("products")->select(
                'name_' . $this->lang . ' as name',
                'breif_' . $this->lang . ' as breif',
                'image',
                'id',
                'category_id'
            )->whereIn('category_id',$list_categories)->orderBy('sorting', 'asc')->paginate(9);
        

            // $data["products"] = DB::table("products")->select(
            //     'name_' . $this->lang . ' as name',
            //     'breif_' . $this->lang . ' as breif',
            //     'image',
            //     'id'
            // )->where([
            //     'active' => 1,
            //     'category_id' => $category
            // ])->orderBy('sorting', 'asc')->paginate(9);
        } else if($category==-1){
        
        return redirect('products');
        
        }
        
       
        else{
        $data["categories_filter"]=[];
            $data["products"] = DB::table("products")->select(
                'name_' . $this->lang . ' as name',
                'breif_' . $this->lang . ' as breif',
                'image',
                'id'
            )->where([
                'active' => 1,
            ])->orderBy('sorting', 'asc')->paginate(9);
           }

        $category_base = DB::table('categories')->select(
            'name_' . $this->lang . ' as name',
            'id'
        )->where([
            'id' => $category,
            'active' => 1
        ])->orderBy('sorting', 'asc')->get();



        $arr = array('data' => $data, 'seo' => $seo);
      


        return view('front.products', $arr);
    }


    public function getProductsByFilter(Request $request)
    {
        $category = $request->input('category') ?: null;

        $this->lang = (\App::getLocale()) ? \App::getLocale() : 'en';

        $data = DB::table("products")->select(
            'name_' . $this->lang . ' as name',
            'breif_' . $this->lang . ' as breif',
            'image',
            'id'
        )->where([
            'active' => 1,
            'category_id' => $category
        ])->orderBy('sorting', 'asc')->get();
        $arr = array('data' => $data);

        return response()->json($arr, 200);
    }




    public function projects()
    {

        $this->lang = (\App::getLocale()) ? \App::getLocale() : 'en';

        $seo = DB::table('seo')->where([
            'model' => 'projects',
            'model_id' => null,
        ])->first();
        
         $data["cover"]=DB::table("highlight_pages")->where([
          "cms_moduls_id"=>74,
          "active"=>1
        
        ])->first();
        

        $data["projects"] = DB::table("projects")->select(
            'name_' . $this->lang . ' as name',
            'desc_' . $this->lang . ' as desc',
            'image',
            'id'
        )->where([
            'active' => 1,
        ])->orderBy('sorting', 'asc')->get();
        $arr = array('data' => $data, 'seo' => $seo);


        return view('front.projects', $arr);
    }


    public function getProjects($id)
    {

        $this->lang = (\App::getLocale()) ? \App::getLocale() : 'en';

        $seo = DB::table('seo')->where([
            'model' => '
            ',
            'model_id' => $id,
        ])->first();
        
         $data["cover"]=DB::table("highlight_pages")->where([
          "cms_moduls_id"=>74,
          "active"=>1
        
        ])->first();
        

        $data["project"] = DB::table("projects")->select(
            'name_' . $this->lang . ' as name',
            'desc_' . $this->lang . ' as description',
            'location',
            'image',
            'company_name',
            'id'
        )->where([
            'active' => 1,
            'id' => $id
        ])->first();




        $data["images"] = DB::table("image_model")->where([
            'model' => "References",
            'model_id' => $id
        ])->get();
        $arr = array('data' => $data, 'seo' => $seo);


        return view('front.project', $arr);
    }


    public function getProducts($id)
    {

        $this->lang = (\App::getLocale()) ? \App::getLocale() : 'en';

        $seo = DB::table('seo')->where([
            'model' => 'products',
            'model_id' => $id,
        ])->first();

        $data["product"] = DB::table("products")->select(
            'products.name_' . $this->lang . ' as name',
            'products.breif_' . $this->lang . ' as breif',
            'model_' . $this->lang . ' as model',
            'keywords_' . $this->lang . ' as keywords',
            'features_' . $this->lang . ' as features',
            'serial_number',
            'products.image',
            'categories.name_' . $this->lang . ' as category_name',
            'technical',
            'category_id',
            'products.id',
            'products.file'
            
            
        )
            ->join('categories', 'categories.id', '=', 'products.category_id')
            ->where([
                'products.active' => 1,
                'products.id' => $id
            ])->first();


        $data["products"] = DB::table("products")->select(
            'name_' . $this->lang . ' as name',
            'breif_' . $this->lang . ' as breif',
            'image',
            'id'
        )->where([
            'active' => 1,
            'category_id'=>$data["product"]->category_id
        ])->where('id', '!=', $id)->orderBy('sorting', 'asc')->limit(3)->get();
        $arr = array('data' => $data, 'seo' => $seo);


        return view('front.product', $arr);
    }


    public function news()
    {

        $this->lang = (\App::getLocale()) ? \App::getLocale() : 'en';

        $seo = DB::table('seo')->where([
            'model' => 'news',
            'model_id' => null,
        ])->first();
        
        $data["cover"]=DB::table("highlight_pages")->where([
          "cms_moduls_id"=>69,
          "active"=>1
        
        ])->first();
        

        $data["news"] = DB::table("news")->select(
            'name_' . $this->lang . ' as name',
            'breif_' . $this->lang . ' as breif',
            'image',
            'id'
        )->where([
            'active' => 1,
        ])->orderBy('sorting', 'asc')->get();
        $arr = array('data' => $data, 'seo' => $seo);


        return view('front.news', $arr);
    }


    public function getNews($id)
    {

        $this->lang = (\App::getLocale()) ? \App::getLocale() : 'en';

        $seo = DB::table('seo')->where([
            'model' => 'news',
            'model_id' => $id,
        ])->first();
        
         $data["cover"]=DB::table("highlight_pages")->where([
          "cms_moduls_id"=>69,
          "active"=>1
        
        ])->first();
        
        

        $data["news"] = DB::table("news")->select(
            'name_' . $this->lang . ' as name',
            'breif_' . $this->lang . ' as breif',
            'description_' . $this->lang . ' as description',
            'date',
            'image',
            'id'
        )->where([
            'active' => 1,
            'id' => $id
        ])->first();


        $data["allNews"] = DB::table("news")->select(
            'name_' . $this->lang . ' as name',
            'breif_' . $this->lang . ' as breif',
            'image',
            'id'
        )->where([
            'active' => 1,
        ])->where('id', '!=', $id)->orderBy('sorting', 'asc')->limit(3)->get();
        $arr = array('data' => $data, 'seo' => $seo);


        return view('front.getnews', $arr);
    }




    public function about_us()
    {

        $this->lang = (\App::getLocale()) ? \App::getLocale() : 'en';

        $seo = DB::table('seo')->where([
            'model' => 'about_us',
            'model_id' => null,
        ])->first();
        
         $data["cover"]=DB::table("highlight_pages")->where([
          "cms_moduls_id"=>73,
          "active"=>1
        
        ])->first();

        $data["about_us"] = DB::table("about_us")->select(
            'desc_' . $this->lang . ' as desc',
            'image',
            'id'
        )->where([
            'active' => 1,
        ])->first();
        $arr = array('data' => $data, 'seo' => $seo);


        return view('front.about_us', $arr);
    }
    


    public function catalogue_type($id=null)
    {

        $this->lang = (\App::getLocale()) ? \App::getLocale() : 'en';
        $id=($id)?$id:1;
        $type= DB::table("catalogue_type")->select(
            'name_' . $this->lang . ' as name',
            'id'
           

        )->where([
            'active' => 1,
            'id'=>$id
        ])->first();
        $data["label"]=$type->name;
        
        $data["cover"]=DB::table("highlight_pages")->where([
          "cms_moduls_id"=>61,
          "active"=>1
        
        ])->first();
        

        $seo = DB::table('seo')->where([
            'model' => 'catalogues',
            'model_id' => null,
        ])->first();

        $data["catalogue_type"] = DB::table("catalogue_type")->select(
            'name_' . $this->lang . ' as name',
            'id'
        )->where([
            'active' => 1,
        ])->orderBy('sorting', 'asc')->get();

        $data["catalogues"] = DB::table("catalogues")->select(
            'name_' . $this->lang . ' as name',
            'id',
            'image',
            'catalogue_type_id',
            'breif_' . $this->lang . ' as breif'


        )->where([
            'active' => 1,
            'catalogue_type_id'=>$id
        ])->orderBy('sorting', 'asc')->get();
        
        
        $data["continents"] = DB::table("continents")->select(
            'name_' . $this->lang . ' as name',
            'id'
        )->where([
            'active' => 1,
        ])->orderBy('sorting', 'asc')->get();
        
        
        $arr = array('data' => $data, 'seo' => $seo);


        return view('front.catalogues', $arr);
    }

    public function getcatalogues($id)
    {
        $this->lang = (\App::getLocale()) ? \App::getLocale() : 'en';

        $seo = DB::table('seo')->where([
            'model' => 'catalogues',
            'model_id' => $id,
        ])->first();


        $data["catalogue"] = DB::table("catalogues")->select(
            'name_' . $this->lang . ' as name',
            'breif_' . $this->lang . ' as breif',
            'image',
            'id',
            'catalogue_type_id'

        )->where([
            'active' => 1,
            'id' => $id

        ])->first();

        $data["continents"] = DB::table("continents")->select(
            'name_' . $this->lang . ' as name',
            'id'
        )->where([
            'active' => 1,
        ])->orderBy('sorting', 'asc')->get();

        $arr = array('data' => $data, 'seo' => $seo);
        return view('front.getcatalogues', $arr);
    }


    public function contact_us()
    {
        $lang = (\App::getLocale()) ? \App::getLocale() : 'en';

        $seo = DB::table('seo')->where([
            'model' => 'contact_us',
            'model_id' => null,
        ])->first();
        
         $data["cover"]=DB::table("highlight_pages")->where([
          "cms_moduls_id"=>79,
          "active"=>1
        
        ])->first();
        

        $data["info"] = \DB::table('info_site')
            ->select(
                'address_' . $lang . ' as address',
                'open_hours_' . $lang . ' as open_hours',
                'about_footer_' . $lang . ' as about_footer',
                'email',
                'phone'
            )->where(
                'active',
                1
            )->first();

        $arr = array('data' => $data, 'seo' => $seo);

        return view('front.contact_us', $arr);
    }

    public function faq()
    {
        $lang = (\App::getLocale()) ? \App::getLocale() : 'en';

        $seo = DB::table('seo')->where([
            'model' => 'faq',
            'model_id' => null,
        ])->first();
        
         $data["cover"]=DB::table("highlight_pages")->where([
          "cms_moduls_id"=>66,
          "active"=>1
        
        ])->first();
        

        $data["faq"] = \DB::table('faq')
            ->select(
                'question_' . $lang . ' as question',
                'response_' . $lang . ' as response',
                'id'
            )->where(
                'active',
                1
            )->get();
        $arr = array('data' => $data, 'seo' => $seo);

        return view('front.faq', $arr);
    }



    public function getSubCategories($cat_id, $level)
    {
        $category = $cat_id;


        if ($category == -1) {
            $this->lang = (\App::getLocale()) ? \App::getLocale() : 'en';

            $data["products"] = DB::table("products")->select(
                'name_' . $this->lang . ' as name',
                'breif_' . $this->lang . ' as breif',
                'image',
                'id'
            )->where([
                'active' => 1,
            ])->orderBy('sorting', 'asc')->get();

            $data["level"] =  1;
            $data["categories"] = [];
            return response()->json($data, 200);
        }
        
        if($category==-2){
	        $data["products"]=[];
	        $data["categories"]=[];
	        $data["level"]=$level;
	        return response()->json($data, 200);
        }

        $this->lang = (\App::getLocale()) ? \App::getLocale() : 'en';
        $category_orginal=Category::find($category);



        if($category_orginal){
            $list_categories=$category_orginal->getAllChildren()->pluck('id');
        }


        $list_ids=[];

        foreach ($list_categories as $key => $cat) {
            $list_ids[]=$cat->id;
        }
        $list_categories[]=(int) $cat_id;



        $data["products"] = DB::table("products")->select(
            'name_' . $this->lang . ' as name',
            'breif_' . $this->lang . ' as breif',
            'image',
            'id',
            'category_id'
        )->whereIn('category_id',$list_categories)->orderBy('sorting', 'asc')->get();
		




        $data["categories"] = DB::table('categories')->select(
            'name_' . $this->lang . ' as name',
            'id'
        )->where([
            'parent_id' => $cat_id,
            'active' => 1
        ])->orderBy('sorting', 'asc')->get();
        $data["level"] = $level + 1;

        return response()->json($data, 200);
    }

    public function become_dealer()
    {
        $lang = (\App::getLocale()) ? \App::getLocale() : 'en';

        $seo = DB::table('seo')->where([
            'model' => 'become_dealer',
            'model_id' => null,
        ])->first();
        
         $data["cover"]=DB::table("highlight_pages")->where([
          "cms_moduls_id"=>78,
          "active"=>1
        
        ])->first();
        

        $arr = array('data'=>$data,'seo' => $seo);


        return view('front.become_dealer', $arr);
    }


    public function become_dealer_request(Request $request)
    {
        DB::table('become_dealers')->insert([
            'entity_name' => $request->input("entity_name"),
            'entity_address' => $request->input("entity_address"),
            'experience' => $request->input("experience"),
            'website' => $request->input("website"),
            'email' => $request->input("email"),
            'country' => $request->input("country"),

            'final_destination' => $request->input("final_destination"),
            'parent_company' => $request->input("parent_company"),
            'subsidiaries' => $request->input("subsidiaries"),
            'managers' => $request->input("managers"),
            'contact_person' => $request->input("contact_person"),
            'penalty' => $request->input("penalty"),
            'notes' => $request->input("notes"),
            'active' => 1,
            'ip'=>$_SERVER['REMOTE_ADDR'].' - '.$request->input("country-ip")
        ]);
        return redirect()->back()->with('success', 'Success');
    }



    public function contact_us_request(Request $request)
    {
        DB::table('contact_us')->insert([
            'name' => $request->input("name"),
            'tel' => $request->input("tel"),
            'email' => $request->input("email"),
            'country' => $request->input("country"),
            'email' => $request->input("email"),
            'comment' => $request->input("comment"),
            'ip'=>$_SERVER['REMOTE_ADDR'].' - '.$request->input("country-ip"),

            'known_by' => $request->input("known_by"),
            'active' => 1,
        ]);
        return redirect()->back()->with('success', 'Success');
    }

    public function request_faq(Request $request)
    {
        DB::table('faq')->insert([
            'question_en' => $request->input("question"),
            'question_fr' => $request->input("question"),
            'ip'=>$_SERVER['REMOTE_ADDR'].' - '.$request->input("country-ip"),

            'active' => 0,
        ]);
        return redirect()->back()->with('success', 'Success');
    }


    public function request_code(Request $request)
    {
        $code = $this->createRandomCode();
        DB::table('request_catalogs')->insert([
            'name' => $request->input("name"),
            'email' => $request->input("email"),
            'company' => $request->input("company"),
            'country' => $request->input("country"),
            'tel' => $request->input("tel"),
            'catalog_id' => $request->input("cat_id"),
            'ip'=>$_SERVER['REMOTE_ADDR'].' - '.$request->input("country-ip"),

            'active' => 0,
            'download_count' => 0,
            'code' => $code,

        ]);
        return response()->json(true, 200);
    }


    private function createRandomCode()
    {
        $n = 5;
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $randomString = '';

        for ($i = 0; $i < $n; $i++) {
            $index = rand(0, strlen($characters) - 1);
            $randomString .= $characters[$index];
        }

        return $randomString;
    }



    public function check_code(Request $request)
    {

        $code = $request->input("code") ?: null;

        if ($code) {
            $cat_id = $request->input("cat_id") ?: null;
            if ($cat_id) {
                $is_request = DB::table('request_catalogs')->where([
                    'code' => $code,
                    'catalog_id' => $cat_id,
                    'active'=>1
                ])->first();
                if ($is_request) {
                    $catalog = DB::table("catalogues")->find($is_request->catalog_id);
                    if ($catalog) {
                        $count = $is_request->download_count + 1;
                        DB::table("request_catalogs")->where([
                            'code' => $code,
                            'catalog_id' => $cat_id,
                            'active'=>1
                        ])->update([
                            'download_count' => $count
                        ]);
                        return response()->json($catalog, 200);
                    } else return response()->json(false, 200);
                } else return response()->json(false, 200);
            } else return response()->json(false, 200);
        } else return response()->json(false, 200);
    }



    public function search(Request $request)
    {

        $this->lang = (\App::getLocale()) ? \App::getLocale() : 'en';
        $q = $request->input('q') ? $request->input('q') : null;

        $seo = DB::table('seo')->where([
            'model' => 'home',
            'model_id' => null,
        ])->first();

        $products = DB::table('products')->select(
            'name_' . $this->lang . ' as name',
            'id'
        )->where(function ($query) use ($q) {
            $query->where('name_en', 'like', "%" . $q . "%")
                ->orWhere('name_fr', 'like', "%" . $q . "%")
                ->orWhere('breif_en', 'like', "%" . $q . "%")
                ->orWhere('breif_fr', 'like', "%" . $q . "%")
                ->orWhere('keywords_en', 'like', "%" . $q . "%")
                ->orWhere('serial_number', 'like', "%" . $q . "%")
                ->orWhere('features_en', 'like', "%" . $q . "%")
                ->orWhere('features_fr', 'like', "%" . $q . "%")
                ->orWhere('model_en', 'like', "%" . $q . "%")
                ->orWhere('model_fr', 'like', "%" . $q . "%")
                ->orWhere('technical', 'like', "%" . $q . "%")
                ->orWhere('keywords_fr', 'like', "%" . $q . "%");
        })->get();


        $categories = DB::table('categories')->select(
            'name_' . $this->lang . ' as name',
            'id'
        )->where(function ($query) use ($q) {
            $query->where('name_en', 'like', "%" . $q . "%")
                ->orWhere('name_fr', 'like', "%" . $q . "%")
                ->orWhere('breif_en', 'like', "%" . $q . "%")
                ->orWhere('breif_fr', 'like', "%" . $q . "%");
        })->get();


        $catalogs = DB::table('catalogues')->select(
            'name_' . $this->lang . ' as name',
            'id'
        )->where(function ($query) use ($q) {
            $query->where('name_en', 'like', "%" . $q . "%")
                ->orWhere('name_fr', 'like', "%" . $q . "%")
                ->orWhere('breif_en', 'like', "%" . $q . "%")
                ->orWhere('breif_fr', 'like', "%" . $q . "%");
        })->get();


        $projects = DB::table('projects')->select(
            'name_' . $this->lang . ' as name',
            'id'
        )->where(function ($query) use ($q) {
            $query->where('name_en', 'like', "%" . $q . "%")
                ->orWhere('name_fr', 'like', "%" . $q . "%")
                ->orWhere('desc_en', 'like', "%" . $q . "%")
                ->orWhere('desc_fr', 'like', "%" . $q . "%");
        })->get();



        $arr = array('q' => $q, 'products' => $products, 'categories' => $categories, 'catalogs' => $catalogs, 'projects' => $projects, "seo" => $seo);

        return view('front.search', $arr);
    }



    public function sendMail($id)
    {
        $request = DB::table("request_catalogs")->find($id);
       

        if ($request) {
          DB::table("request_catalogs")->where('id',$id)->update([
        'active'=>1
        
        ]);
            $res = ['code' => $request->code];
            CRUDBooster::sendEmail(['to' => $request->email, 'data' => $res, 'template' => 'send_code', 'attachments' => []]);
        }
        return redirect()->back()->with(['message_type' => 'success', 'message' => "email sent successfully"]);
    }
    
    
        public function addNewsLetter(Request $request)
	    {
	    
	    $ip = $_SERVER['REMOTE_ADDR']; // This will contain the ip of the request


	    
	    $isFound=DB::table('news_letters')->where('email',$request->input("email"))->first();
	    if(!$isFound){
	    DB::table('news_letters')->insert([
	            'email' => $request->input("email"),
	            'active' => 1,
	            'ip'=>$ip.' - '.$request->input("country")
	            
	
	        ]);
	    
	    }
	        
	    return response()->json(true, 200);
	    }

}