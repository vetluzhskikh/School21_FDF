/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnew.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gnelson <gnelson@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/09/15 18:48:32 by gnelson           #+#    #+#             */
/*   Updated: 2019/09/18 21:13:22 by gnelson          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strnew(size_t size)
{
	char	*str;
	size_t	i;

	i = 0;
	str = NULL;
	if (size == __SIZE_T_MAXI__)
		return (NULL);
	str = (char*)malloc(sizeof(char) * size + 1);
	if (str)
	{
		while (i != size + 1)
			str[i++] = '\0';
	}
	return (str);
}
