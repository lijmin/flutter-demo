import 'dart:ffi';
import 'dart:typed_data';


class ConvertUtil{

  uint8PointerToUtf8(Pointer<Uint8> pUint8, int len){
    Uint8List uint8list = pUint8.asTypedList(len);
    Uint16List uint16list = uint8ListToUint16List(uint8list);
    String utf8 = String.fromCharCodes(uint16list);
    return utf8;
  }

  Uint16List uint8ListToUint16List(Uint8List uint8list){
    int len = uint8list.length ~/ 2;
    Uint16List uint16List = Uint16List(len);
    for(int i=0; i<len; i++){
      int val = (uint8list[i*2]&0xff) | (uint8list[i*2+1]&0xff)<<8 ;
      uint16List[i] = val;
    }
    return uint16List;
  }

}
