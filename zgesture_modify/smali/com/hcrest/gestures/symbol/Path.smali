.class public Lcom/hcrest/gestures/symbol/Path;
.super Lcom/hcrest/gestures/symbol/PathSegment;
.source "Path.java"


# instance fields
.field private mCurrentSegment:Lcom/hcrest/gestures/symbol/PathSegment;

.field private mSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hcrest/gestures/symbol/PathSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/hcrest/gestures/symbol/PathSegment;-><init>()V

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/Path;->mSegments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPoint(Lcom/hcrest/gestures/symbol/Point;)V
    .locals 2
    .param p1, "point"    # Lcom/hcrest/gestures/symbol/Point;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/Path;->mCurrentSegment:Lcom/hcrest/gestures/symbol/PathSegment;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-direct {v0}, Lcom/hcrest/gestures/symbol/PathSegment;-><init>()V

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/Path;->mCurrentSegment:Lcom/hcrest/gestures/symbol/PathSegment;

    .line 67
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/Path;->mSegments:Ljava/util/List;

    iget-object v1, p0, Lcom/hcrest/gestures/symbol/Path;->mCurrentSegment:Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/Path;->mCurrentSegment:Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-virtual {v0, p1}, Lcom/hcrest/gestures/symbol/PathSegment;->addPoint(Lcom/hcrest/gestures/symbol/Point;)V

    .line 71
    invoke-super {p0, p1}, Lcom/hcrest/gestures/symbol/PathSegment;->addPoint(Lcom/hcrest/gestures/symbol/Point;)V

    .line 72
    return-void
.end method

.method public addSegment(Lcom/hcrest/gestures/symbol/PathSegment;Z)V
    .locals 7
    .param p1, "segment"    # Lcom/hcrest/gestures/symbol/PathSegment;
    .param p2, "appendAsDeltas"    # Z

    .prologue
    .line 104
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/hcrest/gestures/symbol/Path;->mCurrentSegment:Lcom/hcrest/gestures/symbol/PathSegment;

    .line 106
    instance-of v5, p1, Lcom/hcrest/gestures/symbol/Path;

    if-eqz v5, :cond_0

    .line 107
    check-cast p1, Lcom/hcrest/gestures/symbol/Path;

    .end local p1    # "segment":Lcom/hcrest/gestures/symbol/PathSegment;
    invoke-virtual {p1}, Lcom/hcrest/gestures/symbol/Path;->getSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hcrest/gestures/symbol/PathSegment;

    .line 108
    .local v4, "s":Lcom/hcrest/gestures/symbol/PathSegment;
    invoke-virtual {p0, v4, p2}, Lcom/hcrest/gestures/symbol/Path;->addSegment(Lcom/hcrest/gestures/symbol/PathSegment;Z)V

    goto :goto_0

    .line 111
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "s":Lcom/hcrest/gestures/symbol/PathSegment;
    .restart local p1    # "segment":Lcom/hcrest/gestures/symbol/PathSegment;
    :cond_0
    iget-object v5, p0, Lcom/hcrest/gestures/symbol/Path;->mSegments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez p2, :cond_3

    .line 112
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/hcrest/gestures/symbol/PathSegment;->getPoint(I)Lcom/hcrest/gestures/symbol/Point;

    move-result-object v0

    .line 113
    .local v0, "firstPoint":Lcom/hcrest/gestures/symbol/Point;
    iget-object v5, p0, Lcom/hcrest/gestures/symbol/Path;->mSegments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 115
    invoke-virtual {p0, v0}, Lcom/hcrest/gestures/symbol/Path;->addPoint(Lcom/hcrest/gestures/symbol/Point;)V

    .line 121
    :goto_1
    const/4 v1, 0x1

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/hcrest/gestures/symbol/PathSegment;->size()I

    move-result v3

    .local v3, "j":I
    :goto_2
    if-ge v1, v3, :cond_4

    .line 122
    invoke-virtual {p1, v1}, Lcom/hcrest/gestures/symbol/PathSegment;->getPoint(I)Lcom/hcrest/gestures/symbol/Point;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/hcrest/gestures/symbol/Path;->addPoint(Lcom/hcrest/gestures/symbol/Point;)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 119
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_2
    iget v5, v0, Lcom/hcrest/gestures/symbol/Point;->x:F

    iget v6, v0, Lcom/hcrest/gestures/symbol/Point;->y:F

    invoke-virtual {p0, v5, v6}, Lcom/hcrest/gestures/symbol/Path;->moveTo(FF)V

    goto :goto_1

    .line 126
    .end local v0    # "firstPoint":Lcom/hcrest/gestures/symbol/Point;
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p1}, Lcom/hcrest/gestures/symbol/PathSegment;->size()I

    move-result v3

    .restart local v3    # "j":I
    :goto_3
    if-ge v1, v3, :cond_4

    .line 127
    invoke-virtual {p1, v1}, Lcom/hcrest/gestures/symbol/PathSegment;->getPoint(I)Lcom/hcrest/gestures/symbol/Point;

    move-result-object v5

    iget v5, v5, Lcom/hcrest/gestures/symbol/Point;->dx:F

    invoke-virtual {p1, v1}, Lcom/hcrest/gestures/symbol/PathSegment;->getPoint(I)Lcom/hcrest/gestures/symbol/Point;

    move-result-object v6

    iget v6, v6, Lcom/hcrest/gestures/symbol/Point;->dy:F

    invoke-virtual {p0, v5, v6}, Lcom/hcrest/gestures/symbol/Path;->moveBy(FF)V

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 131
    .end local v1    # "i":I
    .end local v3    # "j":I
    .end local p1    # "segment":Lcom/hcrest/gestures/symbol/PathSegment;
    :cond_4
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 156
    if-nez p1, :cond_0

    move v3, v4

    .line 170
    :goto_0
    return v3

    .line 157
    :cond_0
    if-ne p0, p1, :cond_1

    move v3, v5

    goto :goto_0

    .line 158
    :cond_1
    instance-of v3, p1, Lcom/hcrest/gestures/symbol/Path;

    if-eqz v3, :cond_5

    move-object v2, p1

    .line 159
    check-cast v2, Lcom/hcrest/gestures/symbol/Path;

    .line 160
    .local v2, "p2":Lcom/hcrest/gestures/symbol/Path;
    invoke-virtual {v2}, Lcom/hcrest/gestures/symbol/Path;->getSegmentCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/hcrest/gestures/symbol/Path;->getSegmentCount()I

    move-result v6

    if-eq v3, v6, :cond_2

    move v3, v4

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/hcrest/gestures/symbol/Path;->getSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 162
    .local v0, "iter1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/hcrest/gestures/symbol/PathSegment;>;"
    invoke-virtual {v2}, Lcom/hcrest/gestures/symbol/Path;->getSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 163
    .local v1, "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/hcrest/gestures/symbol/PathSegment;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/hcrest/gestures/symbol/PathSegment;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    .line 165
    goto :goto_0

    :cond_4
    move v3, v5

    .line 168
    goto :goto_0

    .end local v0    # "iter1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/hcrest/gestures/symbol/PathSegment;>;"
    .end local v1    # "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/hcrest/gestures/symbol/PathSegment;>;"
    .end local v2    # "p2":Lcom/hcrest/gestures/symbol/Path;
    :cond_5
    move v3, v4

    .line 170
    goto :goto_0
.end method

.method public getSegmentCount()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/Path;->mSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hcrest/gestures/symbol/PathSegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/Path;->mSegments:Ljava/util/List;

    return-object v0
.end method

.method public moveBy(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/Path;->mCurrentSegment:Lcom/hcrest/gestures/symbol/PathSegment;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-direct {v0}, Lcom/hcrest/gestures/symbol/PathSegment;-><init>()V

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/Path;->mCurrentSegment:Lcom/hcrest/gestures/symbol/PathSegment;

    .line 40
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/Path;->mSegments:Ljava/util/List;

    iget-object v1, p0, Lcom/hcrest/gestures/symbol/Path;->mCurrentSegment:Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/Path;->mCurrentSegment:Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-virtual {v0, p1, p2}, Lcom/hcrest/gestures/symbol/PathSegment;->moveBy(FF)V

    .line 44
    invoke-super {p0, p1, p2}, Lcom/hcrest/gestures/symbol/PathSegment;->moveBy(FF)V

    .line 45
    return-void
.end method

.method public moveTo(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 53
    new-instance v0, Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-direct {v0}, Lcom/hcrest/gestures/symbol/PathSegment;-><init>()V

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/Path;->mCurrentSegment:Lcom/hcrest/gestures/symbol/PathSegment;

    .line 54
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/Path;->mSegments:Ljava/util/List;

    iget-object v1, p0, Lcom/hcrest/gestures/symbol/Path;->mCurrentSegment:Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/Path;->mCurrentSegment:Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-virtual {v0, p1, p2}, Lcom/hcrest/gestures/symbol/PathSegment;->moveTo(FF)V

    .line 57
    invoke-super {p0, p1, p2}, Lcom/hcrest/gestures/symbol/PathSegment;->moveTo(FF)V

    .line 58
    return-void
.end method
