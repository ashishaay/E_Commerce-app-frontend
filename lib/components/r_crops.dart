import 'package:e_commerce/screens/crop_guide_information.dart';
import 'package:flutter/material.dart';

class r_crops extends StatefulWidget {
  const r_crops({Key? key}) : super(key: key);

  @override
  _r_cropsState createState() => _r_cropsState();
}

class _r_cropsState extends State<r_crops> {
  var list_crops = [
    {"name" : "Bajra",
      "picture" : "assets/crop_guide/bajra.png",
      "price" : 800,
      "size": "Per Hectare",
      "Sowing" : "Most appropriate time of sowing is middle or last week of July.",
      "Fertilizers" : "Under rainfed areas application of organic manures such as FYM or compost helps in increasing the crop yield at the rate of 150-200 quintals/ha 80 –100 kg N:40-50 kgP:40-50kgK is recommended dose for hybrid variety are applied in split doses, half of nitrogen, full phosphorus and potash should be basal placed at the time of sowing .The organic manures must be applied 20 days before the sowing of the seeds for full decomposition. One fourth dose of nitrogen should be applied about 30 days and 60 days after sowing.",
      "Irrigation" : "Bajra is grown rainfed and crop being drought resistant hardly needs any irrigation, however it is observed that the yield may be significantly increased by irrigating the crop at critical growth stages like maximum tillering, flowering and grain filling stage .Therefore light irrigations and efficient drainage is very essential for bajra production.",

    },
    {"name" : "Ground Nut",
      "picture" : "assets/crop_guide/groundnut.png",
      "price" : 500,
      "size": "Per Hectare",
      "Sowing" : "Groundnut is raised mostly as a rainfed kharif crop, being sown from May to June, depending on the monsoon rains. It is sown as late as August or early September. As an irrigated crop it is grown to limited extent between January and March and between in May and July.",
      "Fertilizers" : "Fertilizer recommended for rainfed crop is 6.25 tonnes farmyard manure and 10-25kg nitrogen (N), 20-40kg phosphorus (P2O5) and 20-40kg potash (K2O) per hectare. For irrigated crop 12.5 tonnes farmyard manure and 20-40kg nitrogen (N), 40-90kg phosphorus (P2O5) and 20-40kg potash (K2O) per hectare. The application of nitrogen (N) in two equal splits doses, one before sowing and the other 30 days after sowing. The application of a culture of Rhizobium as seed treatment is beneficial in increasing nodulation and nitrogen fixation. The application of gypsum at 500kg per ha at the pegging stage will enhance pod formation.",
      "Irrigation" : "The kharif crop is caught in a long spell of drought, especially at the pod-formation stage, supplemental irrigation is given. For the irrigated groundnut ,the frequency of irrigation depends on the soil texture, and the interval between irrigation ranges from 8-12 days. The peg-formation stage is critical.",

    },
    {"name" : "Moong",
      "picture" : "assets/crop_guide/moong.png",
      "price" : 500,
      "size": "Per Hectare",
      "Sowing" : "Time of sowing Optimum time for kharif sowing is first fortnight of July. Optimum time for summer moong cultivation is from March to April.  ",
      "Fertilizers" : "Manuring with 25-40kg per ha of phosphorus (P2O5) and 25kg per ha of nitrogen (N) should be given at the time sowing. Also seed treatment with biofertilizer viz. Rhizobium at the rate of 25gram per kg of seed is beneficial.   ",
      "Irrigation" : "Moong is mainly grown as a kharif crop. If needed provide irrigation depending upon the climatic conditions. For summer season crop, three to five irrigations are required depending upon soil type and climatic condition. For good yield stop irrigation 55 days after sowing.",

    },
    {"name" : "Pea",
      "picture" : "assets/crop_guide/pea.png",
      "price" : 500,
      "size": "Per Hectare",
      "Sowing" : "Sowing has to be completed between the end of October and mid of November for plains and between mid of March till end of May for hills.",
      "Fertilizers" : "Urea and SSP requirement per acre of land is 45 kilos and 155 kilos. And potash requirements will be on soil results. Nitrogen and Phosphorus requirement per acre of land is 20 kilos and 25 kilos. While sowing, apply 20kg Nitrogen in form of 50kg Urea and 25kg Phosphorus in form of 150kg Superphosphate per acre. Provide dosage of fertilizer alongside the rows.",
      "Irrigation" : "Irrigation is required before sowing of seeds for better germination. There is no need for pre sowing irrigation in case soil has enough moisture in it. Once sowing is over, it requires a couple of more times of irrigation.1st spray is applied before flowering and 2nd is spayed at the pod formation time. Do not water heavily as it can lead to reduction in total yield.",

    },
    {"name" : "Potato",
      "picture" : "assets/crop_guide/potato.png",
      "price" : 500,
      "size": "Per Hectare",
      "Sowing" : "The planting time varies from region to region. In hills of Himachal Pradesh and Uttar Pradesh, the spring crop is sown from January-February while the summer crop is sown in the month of May. In plains of Haryana, Punjab, Uttar Pradesh, Bihar and West Bengal spring crop is sown in January while the main crop in the 1st week of October.  ",
      "Fertilizers" : "A fertilizer dose of 180-240 kg N,60-90 kg P2 O5 and 85- 25 130 K2O per hectare is recommended for alluvial soils of Indo Gangetic plains. In the hill zone, the 2 application of 100-150 kg N, 100-150 kg P2 O5 and 50-100 kg K2O per hectare is recommended. In black soils of plateau areas about 120-150 kg N, 50 kg each of P2 O5 & K2O is recommended. In the acidic soils of southern plateau 120kg N, 115 kg P2 O5 , and 120 K2O kg per hectare are recommended for potato production.  ",
      "Irrigation" : "Irrigation has a special significance in the potato production as the plant has shallow and sparse root system. First irrigation should be light and given 5-7 days after planting and subsequent irrigation are given at 7-15 days interval depending upon the climatic condition and soil type. The drip system of irrigation is most economical giving highest productivity and saving almost 50% water. It also enables application of fertilizers through irrigation water. The sprinkler system gives uniform distribution of water and reduces water losses by percolation and run off. Sprinkler irrigation is beneficial on frosty nights as it reduces frost damage in potatoes. It is recommended for areas with undulating topography, extremely sandy soil and scarce water supply. Under such situations, the use of sprinkler systems increases water use efficiency by 40% as compared to furrow irrigation.",

    },
    {"name" : "Rice",
      "picture" : "assets/crop_guide/rice.png",
      "price" : 500,
      "size": "Per Hectare",
      "Sowing" : "The main rice growing season in the country is the 'Kharif'. It is known as winter rice as per the harvesting time. The sowing time of winter (kharif) rice is June-July and it is harvested in November-December. The optimum temperature for rice cultivation is between 25°C and 35°C.   ",
      "Fertilizers" : "Apply 40−50 kg N/ha as inorganic fertilizer for every ton of additional grain yield over yield without N. At optimum levels of nutrition, the rice crop (straw plus grain) takes up around 16 kg N per ton of grain yield (10 kg N in grain + 6 kg N in straw).  ",
      "Irrigation" : "The crop is irrigated from 30-35 days onwards, utilizing water impounded in the tanks. Irrigation may be to a depth of 2.5 -5.0cm only. Follow the schedule of one day after disappearance of ponded water in order to save water and to bring additional area under this type of rice cultivation.",
    },
    {"name" : "Soyabean",
      "picture" : "assets/crop_guide/soyabean.png",
      "price" : 500,
      "size": "Per Hectare",
      "Sowing" : "Two cropping seasons of soybean Kharif and spring. In case of Kharif season most common time of sowing is onset of monsoon or last week of June to first week of July while spring sowing is done between 15th of February and 15th of March.  ",
      "Fertilizers" : "Soyabean gives higher positive response to applied nitrogen over symbiotically fixed atmospheric nitrogen through its roots alone which proves that nitrogen fixed by soyabean roots is not enough for its and development. Crop is supplied with 10-15% of total nitrogen requirement Application of 25-30 C.L.FYM at the time of sowing proved better results.50 Kg N + 100 Kg P2O5, 20 kg Sulphur per ha. Also 25 Kg Zinc sulphate and 10 Kg Borax should be applied.  ",
      "Irrigation" : "In case of Kharif crop irrigation is not needed and it is grown rainfed. However during summer the crop can be grown only under assured irrigation and it needs about 5-6 irrigations. The crop should be irrigated at the following critical growth stages to minimize water. 1. Sprouting stage 2. Flowering pod initiation and bean filling stages are important from yield point of view.",

    },
    {"name" : "Tobacco",
      "picture" : "assets/crop_guide/tobacco.png",
      "price" : 500,
      "size": "Per Hectare",
      "Sowing" : "The seed is sown on raised or flat well-prepared seedbeds with intervening channels. A seed rate of 3-5kg per hectare has been found to be the optimum for all types of tobacco. The nursery sowing is varies from state to state and types of tobaccos is given as:-- For the flue cured, Virginia and natu tobacco in Andhra Pradesh are sown in August-September and in Karnataka in April-May.- For the bidi tobacco in Gujarat and Karnataka, the nurseries are sown in June-July for the cigar, cheroot and chewing tobaccos in Tamil Nadu in August-September.- For the hookah and chewing tobaccos in Bihar, Uttar Pradesh and West Bengal in August-October.",
      "Fertilizers" : "Fertilizer dose is varying in different tobacco growing areas. A general dose of for tobacco is 25 tonnes of farmyard manure or filter press cake as a layer; 100kg phosphorus as a basaldressing and 100kg of nitrogen as top-dressing in installments per hectare should be applied.",
      "Irrigation" : "Virginia tobacco on black soils is not normally irrigated, but the crop on light soils is given up to six irrigations. The irrigation water should not contain more than 50pm of chlorides, as otherwise the leaves get burnt and other qualities suffer. In black soils also, in adverse conditions, one irrigation on 40 day old plants is recommended.",

    },
    {"name" : "Tur",
      "picture" : "assets/crop_guide/tur.png",
      "price" : 500,
      "size": "Per Hectare",
      "Sowing" : "Treated seeds of suitable variety having high germination and high real value should be selected for sowing the crop. In irrigated condition the crop should be sown by giving one pre-monsoon irrigation at least a fortnight earlier than the first shower so that plans are well established during rainy season, however, under rainfed conditions the sowing may be done immediately after rains have started. Thus in no case the sowing should be delayed beyond last week of June. In case of diara lands which are prone to flood, the sowing should be done by mid of September.  ",
      "Fertilizers" : "For raising an ideal crop it is required to apply about 25-30 kg N, 50-75 kg P2O5, 30 kg K2O (if the soil is poor in K) and 10-15 kg ZnSo4 in one hectare area. The entire dose of fertilizer should be basal placed at a depth of 12 to 15 cm or 7 to 10 cm below the seed layer in the same row.  ",
      "Irrigation" : "The crop is mostly grown rainfed but one light irrigation between flowering and pod filling stage increases the seed yield. In the event of drought or under aberrant weather condition the crop needs life saving or protective irrigation which is in addition to those mentioned earlier.",

    },
    {"name" : "Wheat",
      "picture" : "assets/crop_guide/wheat.png",
      "price" : 500,
      "size": "Per Hectare",
      "Sowing" : "Wheat is a staple food in India besides rice. It is a Rabi crop that is sown in winters and harvested in the months of spring. Hence, the sowing of the seeds also takes place in winters from October to December. In India, wheat is grown during the winter or rabi season. The crop is sown during November-December and harvested around April. ",
      "Fertilizers" : "Muriates of potash and potassium sulphate are the only potassic fertilizers presently available in the market. Both are equally good for wheat. In addition to the major nutrients (N, P, and K), good responses to micronutrients, especially zinc have been obtained in many areas.   ",
      "Irrigation" : "First irrigation 20-25 days after sowing (Crown root initiation stage). Second Irrigation 40-45 days after sowing (tillering stage). Third Irrigation 70-75 days after sowing (late jointing stage). Fourth Irrigation 90-95 days of sowing (flowering stage).",

    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder:(context, index){
          return R_crops(
            crop_name: list_crops[index]["name"],
            crop_picture: list_crops[index]["picture"],
            crop_estimated_price: list_crops[index]["price"],

            quantity_of_crop: list_crops[index]["size"],
            time_sow: list_crops[index]["Sowing"],
            fertilizer: list_crops[index]["Fertilizers"],
            irrigation: list_crops[index]["Irrigation"],
          );
        });
  }
}

class R_crops extends StatelessWidget {
  final crop_name;
  final crop_picture;

  final crop_estimated_price;
  final quantity_of_crop;
  final time_sow;
  final fertilizer;
  final irrigation;


  R_crops({

    required this.crop_name,
    required this.crop_picture,
    required this.crop_estimated_price,

    required this.quantity_of_crop,
    required this.time_sow,
    required this.fertilizer,
    required this.irrigation
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>crop_info(
          crop_name: crop_name,
          estimated_price: crop_estimated_price,

          crp_details_picture: crop_picture,
              crp_time_of_sowing: time_sow,
              crp_fertilizers: fertilizer,
              crp_irrigation: irrigation,
        ),),);

      },
      child: Card(
        child: ListTile(
          leading: Image.asset(crop_picture, width: 80, height: 80,),
          title: Text(crop_name),
          subtitle: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  //This section is for size
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Text("Qty : "),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(quantity_of_crop, style: TextStyle(color: Colors.red),),
                  ),
                  //This section is for color


                ],
              ),
              // this is for the price
              Container(
                alignment: Alignment.topLeft,
                child: Text("Rs."+"${crop_estimated_price}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.red,
                  ),),
              )
            ],
          ),


          // !!!!!!!!!!!!!!!!!!!!!!! need to add a quatity icon



        ),
      ),
    );
  }
}
