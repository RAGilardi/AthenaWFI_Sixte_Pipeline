pro no_zero,in_map=in_map,out_map=out_map,min_value=min_value

  a = mrdfits(in_map,0,hdr)
  w = where(a le 0.)
  a[w] = min_value
  mwrfits,a,out_map,hdr,/create

  end
