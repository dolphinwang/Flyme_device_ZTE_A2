.class public Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;
.super Ljava/lang/Object;
.source "SymbolGestureLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatchStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;
    }
.end annotation


# static fields
.field public static final DEFAULT_STRATEGY:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;


# instance fields
.field private mHighPercentMatchThreshold:D

.field private mMatchSegmentCount:Z

.field private mMinimumPercentMatch:D

.field private final mType:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 797
    new-instance v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    sget-object v1, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;->BEST_MATCH:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    invoke-direct {v0, v1}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;-><init>(Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;)V

    sput-object v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->DEFAULT_STRATEGY:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    return-void
.end method

.method public constructor <init>(Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;)V
    .locals 2
    .param p1, "type"    # Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    .prologue
    .line 825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->mMatchSegmentCount:Z

    .line 816
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->mMinimumPercentMatch:D

    .line 817
    const-wide v0, 0x3feb333333333333L    # 0.85

    iput-wide v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->mHighPercentMatchThreshold:D

    .line 826
    iput-object p1, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->mType:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    .line 827
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 908
    if-nez p1, :cond_1

    move v1, v2

    .line 921
    :cond_0
    :goto_0
    return v1

    .line 909
    :cond_1
    if-eq p0, p1, :cond_0

    .line 910
    instance-of v3, p1, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 911
    check-cast v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    .line 912
    .local v0, "strategy":Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;
    invoke-virtual {v0}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->getType()Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    move-result-object v3

    iget-object v4, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->mType:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    invoke-virtual {v3, v4}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->getMatchSegmentCount()Z

    move-result v3

    iget-boolean v4, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->mMatchSegmentCount:Z

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->getMinimumPercentMatch()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->mMinimumPercentMatch:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_2

    .line 915
    invoke-virtual {v0}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->getType()Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    move-result-object v3

    sget-object v4, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;->HIGH_THRESHOLD:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    invoke-virtual {v3, v4}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 916
    invoke-virtual {v0}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->getHighPercentMatchThreshold()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->mHighPercentMatchThreshold:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0    # "strategy":Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;
    :cond_2
    move v1, v2

    .line 921
    goto :goto_0
.end method

.method public getHighPercentMatchThreshold()D
    .locals 2

    .prologue
    .line 900
    iget-wide v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->mHighPercentMatchThreshold:D

    return-wide v0
.end method

.method public getMatchSegmentCount()Z
    .locals 1

    .prologue
    .line 881
    iget-boolean v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->mMatchSegmentCount:Z

    return v0
.end method

.method public getMinimumPercentMatch()D
    .locals 2

    .prologue
    .line 890
    iget-wide v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->mMinimumPercentMatch:D

    return-wide v0
.end method

.method public getType()Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->mType:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    return-object v0
.end method

.method public setHighPercentMatchThreshold(D)V
    .locals 1
    .param p1, "highPercentMatchThreshold"    # D

    .prologue
    .line 863
    iput-wide p1, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->mHighPercentMatchThreshold:D

    .line 864
    return-void
.end method

.method public setMatchSegmentCount(Z)V
    .locals 0
    .param p1, "matchSegmentCount"    # Z

    .prologue
    .line 838
    iput-boolean p1, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->mMatchSegmentCount:Z

    .line 839
    return-void
.end method

.method public setMinimumPercentMatch(D)V
    .locals 1
    .param p1, "minimumPercentMatch"    # D

    .prologue
    .line 847
    iput-wide p1, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->mMinimumPercentMatch:D

    .line 848
    return-void
.end method
