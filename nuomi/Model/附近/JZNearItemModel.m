//
//  JZNearItemModel.m
//  nuomi
//
//  Created by jinzelu on 15/10/12.
//  Copyright (c) 2015年 jinzelu. All rights reserved.
//

#import "JZNearItemModel.h"

@implementation JZNearItemModel

+(NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"poi_list":@"poi_list"
             };
}

+(NSValueTransformer *)poi_listJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:[JZPoiListModel class]];
    
}

@end

@implementation JZPoiListModel

+(NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"poi_name":@"poi_name",
             @"poi_id":@"poi_id",
             @"poi_distance":@"poi_distance",
             @"bizarea_title":@"bizarea_title",
             @"tuan_list":@"tuan_list",
             
             @"ugc":@"ugc",
             @"special_label":@"special_label",
             @"poi_image":@"poi_image"
             };
}

@end
