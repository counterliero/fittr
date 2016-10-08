function err = predictor(p,x,y)
pred = p.w*x;
err = sum( (pred(:)-y(:)).^2);