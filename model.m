function p = model(pmax,pidle,u,r)
p = pidle + (pmax - pidle)*u^r;