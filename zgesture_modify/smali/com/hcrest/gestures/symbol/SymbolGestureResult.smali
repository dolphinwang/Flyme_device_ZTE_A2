.class public Lcom/hcrest/gestures/symbol/SymbolGestureResult;
.super Ljava/lang/Object;
.source "SymbolGestureResult.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hcrest/gestures/symbol/SymbolGestureResult$1;,
        Lcom/hcrest/gestures/symbol/SymbolGestureResult$SymbolMatchComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/hcrest/gestures/symbol/SymbolMatch;",
        ">;"
    }
.end annotation


# instance fields
.field private mCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/hcrest/gestures/symbol/SymbolMatch;",
            ">;"
        }
    .end annotation
.end field

.field private mMatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hcrest/gestures/symbol/SymbolMatch;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalizedPath:Lcom/hcrest/gestures/symbol/PathSegment;

.field private mPath:Lcom/hcrest/gestures/symbol/PathSegment;

.field private mPattern:[I

.field private mPercentMatch:D

.field private mStrategy:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;


# direct methods
.method protected constructor <init>(Lcom/hcrest/gestures/symbol/PathSegment;Lcom/hcrest/gestures/symbol/PathSegment;[ILcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;)V
    .locals 2
    .param p1, "path"    # Lcom/hcrest/gestures/symbol/PathSegment;
    .param p2, "normalizedPath"    # Lcom/hcrest/gestures/symbol/PathSegment;
    .param p3, "pattern"    # [I
    .param p4, "strategy"    # Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mPercentMatch:D

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mMatches:Ljava/util/List;

    .line 72
    new-instance v0, Lcom/hcrest/gestures/symbol/SymbolGestureResult$SymbolMatchComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hcrest/gestures/symbol/SymbolGestureResult$SymbolMatchComparator;-><init>(Lcom/hcrest/gestures/symbol/SymbolGestureResult;Lcom/hcrest/gestures/symbol/SymbolGestureResult$1;)V

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mCompare:Ljava/util/Comparator;

    .line 101
    iput-object p1, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mPath:Lcom/hcrest/gestures/symbol/PathSegment;

    .line 102
    iput-object p2, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mNormalizedPath:Lcom/hcrest/gestures/symbol/PathSegment;

    .line 103
    iput-object p3, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mPattern:[I

    .line 104
    iput-object p4, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mStrategy:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    .line 105
    return-void
.end method

.method protected constructor <init>(Lcom/hcrest/gestures/symbol/PathSegment;[ILcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;)V
    .locals 2
    .param p1, "path"    # Lcom/hcrest/gestures/symbol/PathSegment;
    .param p2, "pattern"    # [I
    .param p3, "strategy"    # Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mPercentMatch:D

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mMatches:Ljava/util/List;

    .line 72
    new-instance v0, Lcom/hcrest/gestures/symbol/SymbolGestureResult$SymbolMatchComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hcrest/gestures/symbol/SymbolGestureResult$SymbolMatchComparator;-><init>(Lcom/hcrest/gestures/symbol/SymbolGestureResult;Lcom/hcrest/gestures/symbol/SymbolGestureResult$1;)V

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mCompare:Ljava/util/Comparator;

    .line 84
    iput-object p1, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mPath:Lcom/hcrest/gestures/symbol/PathSegment;

    .line 85
    iput-object p2, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mPattern:[I

    .line 86
    iput-object p3, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mStrategy:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    .line 87
    return-void
.end method


# virtual methods
.method protected addMatch(Lcom/hcrest/gestures/symbol/SymbolGesture;D)V
    .locals 2
    .param p1, "symbol"    # Lcom/hcrest/gestures/symbol/SymbolGesture;
    .param p2, "percentMatch"    # D

    .prologue
    .line 203
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mMatches:Ljava/util/List;

    new-instance v1, Lcom/hcrest/gestures/symbol/SymbolMatch;

    invoke-direct {v1, p1, p2, p3}, Lcom/hcrest/gestures/symbol/SymbolMatch;-><init>(Lcom/hcrest/gestures/symbol/SymbolGesture;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mMatches:Ljava/util/List;

    iget-object v1, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mCompare:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 205
    return-void
.end method

.method public getMatch(I)Lcom/hcrest/gestures/symbol/SymbolMatch;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mMatches:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hcrest/gestures/symbol/SymbolMatch;

    return-object v0
.end method

.method public getMatchCount()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mMatches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMatchStrategy()Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mStrategy:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    return-object v0
.end method

.method public getNormalizedPath()Lcom/hcrest/gestures/symbol/PathSegment;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mNormalizedPath:Lcom/hcrest/gestures/symbol/PathSegment;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mNormalizedPath:Lcom/hcrest/gestures/symbol/PathSegment;

    .line 140
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mPath:Lcom/hcrest/gestures/symbol/PathSegment;

    goto :goto_0
.end method

.method public getPath()Lcom/hcrest/gestures/symbol/PathSegment;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mPath:Lcom/hcrest/gestures/symbol/PathSegment;

    return-object v0
.end method

.method public getPattern()[I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mPattern:[I

    return-object v0
.end method

.method public getPercentMatch()D
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mPercentMatch:D

    return-wide v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    const-string v0, ""

    .line 175
    .local v0, "val":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->hasMatch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->getMatch(I)Lcom/hcrest/gestures/symbol/SymbolMatch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hcrest/gestures/symbol/SymbolMatch;->getSymbol()Lcom/hcrest/gestures/symbol/SymbolGesture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hcrest/gestures/symbol/SymbolGesture;->getName()Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_0
    return-object v0
.end method

.method public hasMatch()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mMatches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/hcrest/gestures/symbol/SymbolMatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mMatches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected setPercentMatch(D)V
    .locals 1
    .param p1, "percentMatch"    # D

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->mPercentMatch:D

    .line 190
    return-void
.end method
