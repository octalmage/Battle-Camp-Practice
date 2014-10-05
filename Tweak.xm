%hook MSGameMode
-(id)wonGame:(id)result
{
	NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/gs.stallin.jason.battlecamppractice.plist"];

	if ([[prefs objectForKey:@"enabled"] boolValue])
	{
		return %orig(NULL);
	}
	else
	{
		return %orig;
	}
	[prefs release];
}
%end