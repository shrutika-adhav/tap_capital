import "dart:convert";
import 'package:http/http.dart' as http;
import "package:fpdart/fpdart.dart";
import "package:injectable/injectable.dart";
import "package:tap_capital/core/network/network_utils.dart";
import "package:tap_capital/feature/models/bond_data.dart";
import "../../core/Failure/failure.dart";
import "../models/bond.dart";


abstract interface class BondRepository {

  Future<Either<Failure, List<Bond>>> getAllBonds();

  Future<Either<Failure, BondData>> getBondDetails();

}

@factoryMethod
@Injectable(as: BondRepository)
class BondRepositoryImpl implements BondRepository{

  @override
  Future<Either<Failure, List<Bond>>> getAllBonds() async{

    final List<Bond> bonds = [];

    try{

      final result = await http.get(Uri.parse(NetworkUtils.bondsAPIUri));

      if(result.statusCode == 200){

        final List<dynamic> bondsList = jsonDecode(result.body)["data"];

        for(int i=0; i< bondsList.length; i++){
          var bond = Bond.fromJson(bondsList[i]);
          bonds.add(bond);
        }
        return right(bonds);

      }
      else {
        return left(Failure("Server Error"));
      }

    }catch(e){
      return left(Failure(e.toString()));

    }

  }

  @override
  Future<Either<Failure, BondData>> getBondDetails() async {
    try{

      final bondDetails = await http.get(Uri.parse(NetworkUtils.bondDetailsUri));

      if(bondDetails.statusCode == 200){
        return right(BondData.fromJson(jsonDecode(bondDetails.body)));
      }
      else{
        return left(Failure("Server Error"));
      }

    }catch(e){
      return left(Failure("Server Error"));
    }

  }

}

