
#read estimates of risk factors for substances use (ages 12-17) by State obtained from SUDAAN output
p1_st_data <-read.table (text="
Alabama,  49.60,	1.37
Alaska,  55.00,	1.41
Arizona,  52.50,	1.56
Arkansas,	50.50,	1.22
California,	51.10,	0.65
Colorado,	55.10,	1.26
Connecticut,	56.30,	1.28
Delaware,	53.60,	1.30
District of Columbia,  53.50,	1.22
Florida,  52.70,	0.67
Georgia,	52.50,	1.15
Hawaii,	49.40,	1.33
Idaho,	48.30,	1.23
Illinois,	52.70,	0.63
Indiana,	49.60,	1.16
Iowa,	46.30,	1.37
Kansas,	44.30,	1.43
Kentucky,	52.90,	1.37
Louisiana,	49.70,	1.23
Maine,	55.60,	1.44
Maryland,	53.90,	1.46
Massachusetts,	55.40,	1.41
Michigan,	52.40,	0.62
Minnesota,	51.50,	1.20
Mississippi,	43.20,	1.14
Missouri,	48.70,	1.20
Montana,	56.40,	1.16
Nebraska,	45.70,	1.51
Nevada,	54.20,	1.17
New Hampshire,	56.10,	1.30
New Jersey,	53.20,	1.45
New Mexico,	57.60,	1.34
New York,	53.70,	0.67
North Carolina,	52.20,	1.26
North Dakota,	48.60,	1.34
Ohio,	50.90,	0.61
Oklahoma,	47.20,	1.42
Oregon,	54.00,	1.35
Pennsylvania,	53.00,	0.63
Rhode Island,	57.20,	1.20
South Carolina,	50.50,	1.21
South Dakota,	43.40,	1.30
Tennessee,	48.90,	1.35
Texas,	48.70,	0.62
Utah,	42.00,	1.49
Vermont,	58.70,	1.24
Virginia,	51.80,	1.18
Washington,	53.50,	1.39
West Virginia,	52.80,	1.07
Wisconsin,	49.90,	1.50
Wyoming,	49.20,	1.29",
                         sep=  "," , col.names = c("state" ,   "Obt_mrj_p" ,  "Obt_mrj_se" ),
                         colClasses = c( "character" ,  "numeric" , "numeric" )                      
)    


#change the names to lower cases
names(p1_st_data) <- tolower (names(p1_st_data))

# cerate five equal-sized groups for the perceived ease of obtaining marijuana variable
p1_st_data$ob_mrj_cat <- cut (p1_st_data$obt_mrj_p, quantile (p1_st_data$obt_mrj_p, (0:5/5), include.lowest=TRUE))

p1_st_data
dim (p1_st_data)
table(p1_st_data$ob_mrj_cat)
p1_st_data [p1_st_data$state =="Utah",] [, 1:4]