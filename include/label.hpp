/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   label.hpp                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cpieri <cpieri@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/06/04 15:26:55 by cpieri            #+#    #+#             */
/*   Updated: 2018/12/31 16:42:36 by delay            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LABEL_H
# define LABEL_H

# include "../../libft/include/libft.h"
# include "vector.hpp"
# include "color.hpp"

/*
   typedef struct	s_label
   {
   char		*title;
   int			font_size;
   t_vector4d	ratio_marge;
   t_color		color;
   }				t_label;

   t_label			new_label(char *s, t_color c,
   t_vector4d ratio_marge, int f_size);
   t_label			*new_m_label(char *s, t_color c,
   t_vector4d ratio_marge, int parent_w);
 */

class	Label
{
	private:
		char const *	_title;
		int				_font_size;
		Color			_color;
		Vector4d		_ratio_marge;

	public:
		Label(char const * s, int f_size, Color c, Vector4d r_m);
		~Label(void);
};

#endif
