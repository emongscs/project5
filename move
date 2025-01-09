AMyActor::AMyActor()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;
	start = FVector2D(0, 0);
	evCnt = 0;
	totDist = 0;

}

// Called when the game starts or when spawned
void AMyActor::BeginPlay()
{
	Super::BeginPlay();
	UE_LOG(LogTemp, Warning, TEXT("총 이동 거리: %f"), totDist);
	UE_LOG(LogTemp, Warning, TEXT("총 이벤트 발생 횟수: %d"), evCnt);

}
int32 AMyActor::step()
{
	return FMath::RandRange(0, 1); // 0 또는 1을 반환
}


