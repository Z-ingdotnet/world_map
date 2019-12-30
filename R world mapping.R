library(ggmap)
library(maptools)
library(maps)


visited <- c("SFO", "Chennai", "London", "Melbourne", "Johannesbury, SA")
ll.visited <- geocode(visited)
visit.x <- ll.visited$lon
visit.y <- ll.visited$lat
#> dput(visit.x)
#c(-122.389979, 80.249583, -0.1198244, 144.96328, 28.06084)
#> dput(visit.y)
#c(37.615223, 13.060422, 51.5112139, -37.814107, -26.1319199)
map("world", fill=TRUE, col="white", bg="lightblue", ylim=c(-60, 90), mar=c(0,0,0,0))
points(visit.x,visit.y, col="red", pch=16)




library(rworldmap)

theCountries <- c("DEU", "COD", "BFA")
# These are the ISO3 names of the countries you'd like to plot in red

malDF <- data.frame(country = c("DEU", "COD", "BFA"),
                    SECI = c(1, 1, 1))
# malDF is a data.frame with the ISO3 country names plus a variable to
# merge to the map data

malMap <- joinCountryData2Map(malDF, joinCode = "ISO3",
                              nameJoinColumn = "country")
# This will join your malDF data.frame to the country map data

mapCountryData(malMap, nameColumnToPlot="SECI", catMethod = "categorical",
               missingCountryCol = gray(.8))



require(rworldmap)
data(countryExData
     countries <- countryExData[ , 2]
     EPI_regions <- countryExData[ , 3]
     GEO_regions <- countryExData[ , 4]

countryExData
     
     
     
     


library(rworldmap)
     require(rworldmap)
     data(countryExData
          countries <- countryExData[ , 2]
          EPI_regions <- countryExData[ , 3]
          GEO_regions <- countryExData[ , 4]
          
          
          countries
          
          malDF <- data.frame(country = c('Argentina',
                                          'United Arab Emirates',
                                          'Australia',
                                          'Canada',
                                          'China',
                                          'Brazil',
                                          'Chile',
                                          'Central African Republic',
                                          'Germany',
                                          'United Kingdom',
                                          'Spain',
                                          'France',
                                          'Indonesia',
                                          'Japan',
                                          'South Korea',
                                          'Malaysia',
                                          'Nigeria',
                                          'Oman',
                                          'Pakistan',
                                          'Saudi Arabia',
                                          'South Africa',
                                          'Turkey',
                                          'Jordan',
                                          'Taiwan',
                                          'Thailand',
                                          'Yemen',
                                          'Zimbabwe',
                                          'United States',
                                          'South Korea',
                                          'New Zealand',
                                          'Egypt',
                                          'Pakistan',
                                          'Russia'),
                              SECI_MODEL_STUDIED_BY_COUNTRY = c(1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1,
                                                       1))
          # malDF is a data.frame with the ISO3 country names plus a variable to
          # merge to the map data
        
          malMap <- joinCountryData2Map(malDF, joinCode = "NAME",
                                        nameJoinColumn = "country")
          # This will join your malDF data.frame to the country map data
          
          #colourPalette <- c("lightgray","#F8766D","#00BFC4", "cadetblue1")
          
          mapCountryData(malMap, nameColumnToPlot="SECI_MODEL_STUDIED_BY_COUNTRY", catMethod = "categorical", 
                         colourPalette="black2White" #,oceanCol="lightblue"
                         ,addLegend=F,missingCountryCol = gray(.8))
          
          