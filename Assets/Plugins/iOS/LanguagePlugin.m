//
//  LanguagePlugin.m
//  Unity-iPhone
//
//  Created by takashi nakamura on 11/07/15.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LanguagePlugin.h"

char* MakeStringCopy (const char* string)
{
	if (string == NULL)
		return NULL;
	
	char* res = (char*)malloc(strlen(string) + 1);
	strcpy(res, string);
	return res;
}

char *CurrentLanguage_ () {
	NSArray *languages = [NSLocale preferredLanguages];
	NSString *currentLanguage = [languages objectAtIndex:0];
	return MakeStringCopy([currentLanguage UTF8String]);
}