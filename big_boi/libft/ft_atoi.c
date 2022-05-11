/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: xchouina <marvin@42quebec.com>             +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/21 15:34:17 by xchouina          #+#    #+#             */
/*   Updated: 2021/11/03 16:03:11 by xchouina         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "libft.h"

int	ft_atoi(const char *str)
{
	unsigned int	neg;
	unsigned int	res;

	res = 0;
	neg = 1;
	while (((*str >= 9 && *str <= 13) || (*str == 32)) && (*str))
		str++;
	if ((*str == '+' || *str == '-') && (*str))
	{
		if (*str == '-')
			neg *= (-1);
		str++;
	}
	while ((*str >= '0' && *str <= '9') && (*str))
	{
		res = res * 10 + (*str - '0');
		str++;
	}
	return (res * neg);
}
