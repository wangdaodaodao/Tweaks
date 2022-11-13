
// -- 1.如果hook的是id方法，只需要将此方法的Return Value（返回值）设为null，此方法即不执行；
// -- 2.如果hook的是没有返回值的void方法，只需要选择添加上此方法即可；
// -- 3.如果hook的是其它返回值的方法，比如int、bool等，只需要在方法的返回值里填入要设置的值。


/*%hook CSJNativeExpressBannerView
- (void)setDelegate:(id)arg1{
}
%end

*/

%hook WBContentHeaderTrendCell

-(id)mma_displayADView{
	return nil;

}
%end


