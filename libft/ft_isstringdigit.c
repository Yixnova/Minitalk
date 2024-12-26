/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isstringdigit.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yigsahin <yigsahin@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/20 22:37:19 by yigsahin          #+#    #+#             */
/*   Updated: 2024/12/20 22:37:20 by yigsahin         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_isstringdigit(char *string)
{
	int	i;
	int	result;

	i = 0;
	result = 0;
	while (string[i])
	{
		if (ft_isdigit(string[i]) == 1)
			result = 1;
		else
			return (0);
		i++;
	}
	return (result);
}
