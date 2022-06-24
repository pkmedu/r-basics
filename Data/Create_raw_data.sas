

data _null_;
 file "C:\r-basics\Data\class_csv.txt";
 set sashelp.class;
 put (_all_) (',');
run;

data _null_;
  set sashelp.class;
  file "C:\r-basics\Data\class.txt";
  if _n_=1 then put @1 'NAME' @19 'SEX' @23 'AGE' 
                    @30 'HEIGHT' @38 'WEIGHT';
  put (_all_)(1*$20.,1*$2.,1*3.,2*8.2);
run;

libname myxls xlsx "C:\r-basics\Data\class.xlsx";
data myxls.class;
 set sashelp.class;
 run;
libname myxls clear;

proc json out="C:\r-basics\Data\class.json" pretty;                                                                                                         
   export sashelp.class;                                                                                              
run; 
