#include "stdafx.h"
#include <iostream>
#include <stdio.h>


extern "C"
{
	int __stdcall lenght(char* buffer, char* str)
	{
		if (str == nullptr)
			return 0;
		int len = 0;
		for (int i = 0; i < 256; i++)
			if (str[i] == '\0')
			{
				len = i; break;
			}
		return len;
	}

	char* __stdcall concat(char* buffer, char* str1, char* str2)
	{
		int i = NULL, len1 = NULL, len2 = NULL;
		for (int j = 0; str1[j] != '\0'; j++)
		{
			if (i == 255)
				break;
			buffer[i++] = str1[j];
		}
		for (int j = 0; str2[j] != '\0'; j++)
		{
			if (i == 255)
				break;
			buffer[i++] = str2[j];
		}
		buffer[i] = '\0';
		return buffer;
	}

	int __stdcall outnum(int value)
	{
		std::cout << value;
		return 0;
	}

	int __stdcall outstr(char* ptr)
	{
		if (ptr == nullptr)
		{
			std::cout << std::endl;
		}
		for (int i = 0; ptr[i] != '\0'; i++)
			std::cout << ptr[i];
		return 0;
	}
}