.class public Lcom/hcrest/gestures/symbol/PathSegment;
.super Ljava/lang/Object;
.source "PathSegment.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/hcrest/gestures/symbol/Point;",
        ">;"
    }
.end annotation


# instance fields
.field private bottom:F

.field private boundsInitialized:Z

.field private left:F

.field private length:F

.field private mCachedResult:Lcom/hcrest/gestures/symbol/SymbolGestureResult;

.field private mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hcrest/gestures/symbol/Point;",
            ">;"
        }
    .end annotation
.end field

.field private right:F

.field private top:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->boundsInitialized:Z

    return-void
.end method

.method public static copyOf(Lcom/hcrest/gestures/symbol/PathSegment;)Lcom/hcrest/gestures/symbol/PathSegment;
    .locals 3
    .param p0, "segment"    # Lcom/hcrest/gestures/symbol/PathSegment;

    .prologue
    .line 530
    new-instance v1, Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-direct {v1}, Lcom/hcrest/gestures/symbol/PathSegment;-><init>()V

    .line 531
    .local v1, "out":Lcom/hcrest/gestures/symbol/PathSegment;
    invoke-virtual {p0}, Lcom/hcrest/gestures/symbol/PathSegment;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 532
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/hcrest/gestures/symbol/Point;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hcrest/gestures/symbol/Point;

    invoke-virtual {v1, v2}, Lcom/hcrest/gestures/symbol/PathSegment;->addPoint(Lcom/hcrest/gestures/symbol/Point;)V

    goto :goto_0

    .line 535
    :cond_0
    return-object v1
.end method

.method private static dist(FFFF)F
    .locals 3
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .prologue
    .line 398
    sub-float v0, p2, p0

    sub-float v1, p2, p0

    mul-float/2addr v0, v1

    sub-float v1, p3, p1

    sub-float v2, p3, p1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/hcrest/gestures/symbol/PathSegment;
    .locals 9
    .param p0, "stringPath"    # Ljava/lang/String;

    .prologue
    .line 546
    new-instance v4, Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-direct {v4}, Lcom/hcrest/gestures/symbol/PathSegment;-><init>()V

    .line 547
    .local v4, "path":Lcom/hcrest/gestures/symbol/PathSegment;
    const-string v7, "[\\{\\}]"

    const-string v8, ""

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 548
    const-string v7, "\\s*,\\s*"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 549
    .local v5, "points":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 550
    .local v3, "p":Ljava/lang/String;
    const-string v7, "[\\[\\]]"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 551
    const-string v7, "\\s*,\\s*"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 552
    .local v6, "xy":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v4, v7, v8}, Lcom/hcrest/gestures/symbol/PathSegment;->moveTo(FF)V

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 554
    .end local v3    # "p":Ljava/lang/String;
    .end local v6    # "xy":[Ljava/lang/String;
    :cond_0
    return-object v4
.end method


# virtual methods
.method protected addPoint(Lcom/hcrest/gestures/symbol/Point;)V
    .locals 5
    .param p1, "point"    # Lcom/hcrest/gestures/symbol/Point;

    .prologue
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x1

    .line 98
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-boolean v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->boundsInitialized:Z

    if-nez v0, :cond_0

    .line 101
    iput v2, p0, Lcom/hcrest/gestures/symbol/PathSegment;->left:F

    .line 102
    iput v2, p0, Lcom/hcrest/gestures/symbol/PathSegment;->top:F

    .line 103
    iput v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->right:F

    .line 104
    iput v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->bottom:F

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->boundsInitialized:Z

    .line 108
    :cond_0
    iget v0, p1, Lcom/hcrest/gestures/symbol/Point;->x:F

    iget v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p1, Lcom/hcrest/gestures/symbol/Point;->x:F

    iput v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->left:F

    .line 109
    :cond_1
    iget v0, p1, Lcom/hcrest/gestures/symbol/Point;->y:F

    iget v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget v0, p1, Lcom/hcrest/gestures/symbol/Point;->y:F

    iput v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->top:F

    .line 110
    :cond_2
    iget v0, p1, Lcom/hcrest/gestures/symbol/Point;->x:F

    iget v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p1, Lcom/hcrest/gestures/symbol/Point;->x:F

    iput v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->right:F

    .line 111
    :cond_3
    iget v0, p1, Lcom/hcrest/gestures/symbol/Point;->y:F

    iget v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget v0, p1, Lcom/hcrest/gestures/symbol/Point;->y:F

    iput v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->bottom:F

    .line 113
    :cond_4
    iget v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->length:F

    float-to-double v0, v0

    iget v2, p1, Lcom/hcrest/gestures/symbol/Point;->dx:F

    iget v3, p1, Lcom/hcrest/gestures/symbol/Point;->dx:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p1, Lcom/hcrest/gestures/symbol/Point;->dy:F

    iget v4, p1, Lcom/hcrest/gestures/symbol/Point;->dy:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->length:F

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mCachedResult:Lcom/hcrest/gestures/symbol/SymbolGestureResult;

    .line 116
    return-void
.end method

.method public distance(FFFF)F
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 436
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hcrest/gestures/symbol/PathSegment;->intersects(FFFF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    const/4 v0, 0x0

    .line 460
    :goto_0
    return v0

    .line 439
    :cond_0
    iget v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->left:F

    iget v2, p0, Lcom/hcrest/gestures/symbol/PathSegment;->top:F

    invoke-static {v1, v2, p1, p2}, Lcom/hcrest/gestures/symbol/PathSegment;->dist(FFFF)F

    move-result v0

    .line 441
    .local v0, "d":F
    iget v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->left:F

    iget v2, p0, Lcom/hcrest/gestures/symbol/PathSegment;->top:F

    invoke-static {v1, v2, p1, p4}, Lcom/hcrest/gestures/symbol/PathSegment;->dist(FFFF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 442
    iget v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->left:F

    iget v2, p0, Lcom/hcrest/gestures/symbol/PathSegment;->top:F

    invoke-static {v1, v2, p3, p2}, Lcom/hcrest/gestures/symbol/PathSegment;->dist(FFFF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 443
    iget v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->left:F

    iget v2, p0, Lcom/hcrest/gestures/symbol/PathSegment;->top:F

    invoke-static {v1, v2, p3, p4}, Lcom/hcrest/gestures/symbol/PathSegment;->dist(FFFF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 445
    iget v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->left:F

    iget v2, p0, Lcom/hcrest/gestures/symbol/PathSegment;->bottom:F

    invoke-static {v1, v2, p1, p2}, Lcom/hcrest/gestures/symbol/PathSegment;->dist(FFFF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 446
    iget v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->left:F

    iget v2, p0, Lcom/hcrest/gestures/symbol/PathSegment;->bottom:F

    invoke-static {v1, v2, p1, p4}, Lcom/hcrest/gestures/symbol/PathSegment;->dist(FFFF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 447
    iget v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->left:F

    iget v2, p0, Lcom/hcrest/gestures/symbol/PathSegment;->bottom:F

    invoke-static {v1, v2, p3, p2}, Lcom/hcrest/gestures/symbol/PathSegment;->dist(FFFF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 448
    iget v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->left:F

    iget v2, p0, Lcom/hcrest/gestures/symbol/PathSegment;->bottom:F

    invoke-static {v1, v2, p3, p4}, Lcom/hcrest/gestures/symbol/PathSegment;->dist(FFFF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 450
    iget v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->right:F

    iget v2, p0, Lcom/hcrest/gestures/symbol/PathSegment;->top:F

    invoke-static {v1, v2, p1, p2}, Lcom/hcrest/gestures/symbol/PathSegment;->dist(FFFF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 451
    iget v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->right:F

    iget v2, p0, Lcom/hcrest/gestures/symbol/PathSegment;->top:F

    invoke-static {v1, v2, p1, p4}, Lcom/hcrest/gestures/symbol/PathSegment;->dist(FFFF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 452
    iget v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->right:F

    iget v2, p0, Lcom/hcrest/gestures/symbol/PathSegment;->top:F

    invoke-static {v1, v2, p3, p2}, Lcom/hcrest/gestures/symbol/PathSegment;->dist(FFFF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 453
    iget v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->right:F

    iget v2, p0, Lcom/hcrest/gestures/symbol/PathSegment;->top:F

    invoke-static {v1, v2, p3, p4}, Lcom/hcrest/gestures/symbol/PathSegment;->dist(FFFF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 455
    iget v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->right:F

    iget v2, p0, Lcom/hcrest/gestures/symbol/PathSegment;->bottom:F

    invoke-static {v1, v2, p1, p2}, Lcom/hcrest/gestures/symbol/PathSegment;->dist(FFFF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 456
    iget v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->right:F

    iget v2, p0, Lcom/hcrest/gestures/symbol/PathSegment;->bottom:F

    invoke-static {v1, v2, p1, p4}, Lcom/hcrest/gestures/symbol/PathSegment;->dist(FFFF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 457
    iget v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->right:F

    iget v2, p0, Lcom/hcrest/gestures/symbol/PathSegment;->bottom:F

    invoke-static {v1, v2, p3, p2}, Lcom/hcrest/gestures/symbol/PathSegment;->dist(FFFF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 458
    iget v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->right:F

    iget v2, p0, Lcom/hcrest/gestures/symbol/PathSegment;->bottom:F

    invoke-static {v1, v2, p3, p4}, Lcom/hcrest/gestures/symbol/PathSegment;->dist(FFFF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 460
    goto/16 :goto_0
.end method

.method public distance(Lcom/hcrest/gestures/symbol/PathSegment;)F
    .locals 8
    .param p1, "path"    # Lcom/hcrest/gestures/symbol/PathSegment;

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lcom/hcrest/gestures/symbol/PathSegment;->intersects(Lcom/hcrest/gestures/symbol/PathSegment;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 411
    const/4 v2, 0x0

    .line 421
    :cond_0
    return v2

    .line 413
    :cond_1
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 414
    .local v2, "d":F
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p1}, Lcom/hcrest/gestures/symbol/PathSegment;->size()I

    move-result v5

    .local v5, "j":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 415
    invoke-virtual {p1, v3}, Lcom/hcrest/gestures/symbol/PathSegment;->getPoint(I)Lcom/hcrest/gestures/symbol/Point;

    move-result-object v1

    .line 416
    .local v1, "b":Lcom/hcrest/gestures/symbol/Point;
    const/4 v4, 0x1

    .local v4, "ii":I
    iget-object v7, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "jj":I
    :goto_1
    if-ge v4, v6, :cond_2

    .line 417
    iget-object v7, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hcrest/gestures/symbol/Point;

    .line 418
    .local v0, "a":Lcom/hcrest/gestures/symbol/Point;
    invoke-virtual {v0, v1}, Lcom/hcrest/gestures/symbol/Point;->distance(Lcom/hcrest/gestures/symbol/Point;)F

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 416
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 414
    .end local v0    # "a":Lcom/hcrest/gestures/symbol/Point;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 562
    if-nez p1, :cond_0

    move v3, v4

    .line 576
    :goto_0
    return v3

    .line 563
    :cond_0
    if-ne p0, p1, :cond_1

    move v3, v5

    goto :goto_0

    .line 564
    :cond_1
    instance-of v3, p1, Lcom/hcrest/gestures/symbol/PathSegment;

    if-eqz v3, :cond_5

    move-object v2, p1

    .line 565
    check-cast v2, Lcom/hcrest/gestures/symbol/PathSegment;

    .line 566
    .local v2, "p2":Lcom/hcrest/gestures/symbol/PathSegment;
    invoke-virtual {v2}, Lcom/hcrest/gestures/symbol/PathSegment;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/hcrest/gestures/symbol/PathSegment;->size()I

    move-result v6

    if-eq v3, v6, :cond_2

    move v3, v4

    goto :goto_0

    .line 567
    :cond_2
    invoke-virtual {p0}, Lcom/hcrest/gestures/symbol/PathSegment;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 568
    .local v0, "iter1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/hcrest/gestures/symbol/Point;>;"
    invoke-virtual {v2}, Lcom/hcrest/gestures/symbol/PathSegment;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 569
    .local v1, "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/hcrest/gestures/symbol/Point;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 570
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hcrest/gestures/symbol/Point;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/hcrest/gestures/symbol/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    .line 571
    goto :goto_0

    :cond_4
    move v3, v5

    .line 574
    goto :goto_0

    .end local v0    # "iter1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/hcrest/gestures/symbol/Point;>;"
    .end local v1    # "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/hcrest/gestures/symbol/Point;>;"
    .end local v2    # "p2":Lcom/hcrest/gestures/symbol/PathSegment;
    :cond_5
    move v3, v4

    .line 576
    goto :goto_0
.end method

.method public getBottom()F
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->bottom:F

    return v0
.end method

.method protected getCachedResult()Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mCachedResult:Lcom/hcrest/gestures/symbol/SymbolGestureResult;

    return-object v0
.end method

.method public getCenterX()F
    .locals 2

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/hcrest/gestures/symbol/PathSegment;->getWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getCenterY()F
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/hcrest/gestures/symbol/PathSegment;->getHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 246
    iget v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->bottom:F

    iget v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLeft()F
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->left:F

    return v0
.end method

.method public getPathLength()F
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->length:F

    return v0
.end method

.method public getPoint(I)Lcom/hcrest/gestures/symbol/Point;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hcrest/gestures/symbol/Point;

    return-object v0
.end method

.method public getRight()F
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->right:F

    return v0
.end method

.method public getTop()F
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->top:F

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 235
    iget v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->right:F

    iget v1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public intersects(FFFF)Z
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 352
    iget v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->left:F

    cmpg-float v0, v0, p3

    if-gez v0, :cond_0

    iget v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->right:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->top:F

    cmpg-float v0, v0, p4

    if-gez v0, :cond_0

    iget v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->bottom:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public intersects(Lcom/hcrest/gestures/symbol/PathSegment;)Z
    .locals 22
    .param p1, "path"    # Lcom/hcrest/gestures/symbol/PathSegment;

    .prologue
    .line 365
    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/gestures/symbol/PathSegment;->getLeft()F

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/gestures/symbol/PathSegment;->getTop()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/gestures/symbol/PathSegment;->getRight()F

    move-result v20

    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/gestures/symbol/PathSegment;->getBottom()F

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hcrest/gestures/symbol/PathSegment;->intersects(FFFF)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 367
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/hcrest/gestures/symbol/PathSegment;->getPoint(I)Lcom/hcrest/gestures/symbol/Point;

    move-result-object v7

    .line 368
    .local v7, "b1":Lcom/hcrest/gestures/symbol/Point;
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/gestures/symbol/PathSegment;->size()I

    move-result v11

    .local v11, "j":I
    :goto_0
    if-ge v9, v11, :cond_2

    .line 369
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/hcrest/gestures/symbol/PathSegment;->getPoint(I)Lcom/hcrest/gestures/symbol/Point;

    move-result-object v8

    .line 371
    .local v8, "b2":Lcom/hcrest/gestures/symbol/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hcrest/gestures/symbol/Point;

    .line 372
    .local v5, "a1":Lcom/hcrest/gestures/symbol/Point;
    const/4 v10, 0x1

    .local v10, "ii":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v12

    .local v12, "jj":I
    :goto_1
    if-ge v10, v12, :cond_1

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hcrest/gestures/symbol/Point;

    .line 375
    .local v6, "a2":Lcom/hcrest/gestures/symbol/Point;
    iget v0, v8, Lcom/hcrest/gestures/symbol/Point;->x:F

    move/from16 v18, v0

    iget v0, v7, Lcom/hcrest/gestures/symbol/Point;->x:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    iget v0, v5, Lcom/hcrest/gestures/symbol/Point;->y:F

    move/from16 v19, v0

    iget v0, v7, Lcom/hcrest/gestures/symbol/Point;->y:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    iget v0, v8, Lcom/hcrest/gestures/symbol/Point;->y:F

    move/from16 v19, v0

    iget v0, v7, Lcom/hcrest/gestures/symbol/Point;->y:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    iget v0, v5, Lcom/hcrest/gestures/symbol/Point;->x:F

    move/from16 v20, v0

    iget v0, v7, Lcom/hcrest/gestures/symbol/Point;->x:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v19, v19, v20

    sub-float v15, v18, v19

    .line 376
    .local v15, "ua_t":F
    iget v0, v6, Lcom/hcrest/gestures/symbol/Point;->x:F

    move/from16 v18, v0

    iget v0, v5, Lcom/hcrest/gestures/symbol/Point;->x:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    iget v0, v5, Lcom/hcrest/gestures/symbol/Point;->y:F

    move/from16 v19, v0

    iget v0, v7, Lcom/hcrest/gestures/symbol/Point;->y:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    iget v0, v6, Lcom/hcrest/gestures/symbol/Point;->y:F

    move/from16 v19, v0

    iget v0, v5, Lcom/hcrest/gestures/symbol/Point;->y:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    iget v0, v5, Lcom/hcrest/gestures/symbol/Point;->x:F

    move/from16 v20, v0

    iget v0, v7, Lcom/hcrest/gestures/symbol/Point;->x:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v19, v19, v20

    sub-float v17, v18, v19

    .line 377
    .local v17, "ub_t":F
    iget v0, v8, Lcom/hcrest/gestures/symbol/Point;->y:F

    move/from16 v18, v0

    iget v0, v7, Lcom/hcrest/gestures/symbol/Point;->y:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    iget v0, v6, Lcom/hcrest/gestures/symbol/Point;->x:F

    move/from16 v19, v0

    iget v0, v5, Lcom/hcrest/gestures/symbol/Point;->x:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    iget v0, v8, Lcom/hcrest/gestures/symbol/Point;->x:F

    move/from16 v19, v0

    iget v0, v7, Lcom/hcrest/gestures/symbol/Point;->x:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    iget v0, v6, Lcom/hcrest/gestures/symbol/Point;->y:F

    move/from16 v20, v0

    iget v0, v5, Lcom/hcrest/gestures/symbol/Point;->y:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v19, v19, v20

    sub-float v13, v18, v19

    .line 379
    .local v13, "u_b":F
    const/16 v18, 0x0

    cmpl-float v18, v13, v18

    if-eqz v18, :cond_0

    .line 380
    div-float v14, v15, v13

    .line 381
    .local v14, "ua":F
    div-float v16, v17, v13

    .line 383
    .local v16, "ub":F
    const/16 v18, 0x0

    cmpg-float v18, v18, v14

    if-gtz v18, :cond_0

    const/high16 v18, 0x3f800000    # 1.0f

    cmpg-float v18, v14, v18

    if-gtz v18, :cond_0

    const/16 v18, 0x0

    cmpg-float v18, v18, v16

    if-gtz v18, :cond_0

    const/high16 v18, 0x3f800000    # 1.0f

    cmpg-float v18, v16, v18

    if-gtz v18, :cond_0

    .line 384
    const/16 v18, 0x1

    .line 393
    .end local v5    # "a1":Lcom/hcrest/gestures/symbol/Point;
    .end local v6    # "a2":Lcom/hcrest/gestures/symbol/Point;
    .end local v7    # "b1":Lcom/hcrest/gestures/symbol/Point;
    .end local v8    # "b2":Lcom/hcrest/gestures/symbol/Point;
    .end local v9    # "i":I
    .end local v10    # "ii":I
    .end local v11    # "j":I
    .end local v12    # "jj":I
    .end local v13    # "u_b":F
    .end local v14    # "ua":F
    .end local v15    # "ua_t":F
    .end local v16    # "ub":F
    .end local v17    # "ub_t":F
    :goto_2
    return v18

    .line 388
    .restart local v5    # "a1":Lcom/hcrest/gestures/symbol/Point;
    .restart local v6    # "a2":Lcom/hcrest/gestures/symbol/Point;
    .restart local v7    # "b1":Lcom/hcrest/gestures/symbol/Point;
    .restart local v8    # "b2":Lcom/hcrest/gestures/symbol/Point;
    .restart local v9    # "i":I
    .restart local v10    # "ii":I
    .restart local v11    # "j":I
    .restart local v12    # "jj":I
    .restart local v13    # "u_b":F
    .restart local v15    # "ua_t":F
    .restart local v17    # "ub_t":F
    :cond_0
    move-object v5, v6

    .line 372
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 390
    .end local v6    # "a2":Lcom/hcrest/gestures/symbol/Point;
    .end local v13    # "u_b":F
    .end local v15    # "ua_t":F
    .end local v17    # "ub_t":F
    :cond_1
    move-object v7, v8

    .line 368
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 393
    .end local v5    # "a1":Lcom/hcrest/gestures/symbol/Point;
    .end local v7    # "b1":Lcom/hcrest/gestures/symbol/Point;
    .end local v8    # "b2":Lcom/hcrest/gestures/symbol/Point;
    .end local v9    # "i":I
    .end local v10    # "ii":I
    .end local v11    # "j":I
    .end local v12    # "jj":I
    :cond_2
    const/16 v18, 0x0

    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/hcrest/gestures/symbol/Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public moveBy(FF)V
    .locals 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 63
    iget-object v2, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 64
    new-instance v1, Lcom/hcrest/gestures/symbol/Point;

    invoke-direct {v1, p1, p2, p1, p2}, Lcom/hcrest/gestures/symbol/Point;-><init>(FFFF)V

    .line 70
    .local v1, "newPoint":Lcom/hcrest/gestures/symbol/Point;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/hcrest/gestures/symbol/PathSegment;->addPoint(Lcom/hcrest/gestures/symbol/Point;)V

    .line 71
    return-void

    .line 66
    .end local v1    # "newPoint":Lcom/hcrest/gestures/symbol/Point;
    :cond_0
    iget-object v2, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    iget-object v3, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hcrest/gestures/symbol/Point;

    .line 67
    .local v0, "last":Lcom/hcrest/gestures/symbol/Point;
    new-instance v1, Lcom/hcrest/gestures/symbol/Point;

    iget v2, v0, Lcom/hcrest/gestures/symbol/Point;->x:F

    add-float/2addr v2, p1

    iget v3, v0, Lcom/hcrest/gestures/symbol/Point;->y:F

    add-float/2addr v3, p2

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/hcrest/gestures/symbol/Point;-><init>(FFFF)V

    .restart local v1    # "newPoint":Lcom/hcrest/gestures/symbol/Point;
    goto :goto_0
.end method

.method public moveTo(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 82
    iget-object v2, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 83
    new-instance v1, Lcom/hcrest/gestures/symbol/Point;

    invoke-direct {v1, p1, p2, v3, v3}, Lcom/hcrest/gestures/symbol/Point;-><init>(FFFF)V

    .line 89
    .local v1, "newPoint":Lcom/hcrest/gestures/symbol/Point;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/hcrest/gestures/symbol/PathSegment;->addPoint(Lcom/hcrest/gestures/symbol/Point;)V

    .line 90
    return-void

    .line 85
    .end local v1    # "newPoint":Lcom/hcrest/gestures/symbol/Point;
    :cond_0
    iget-object v2, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    iget-object v3, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hcrest/gestures/symbol/Point;

    .line 86
    .local v0, "last":Lcom/hcrest/gestures/symbol/Point;
    new-instance v1, Lcom/hcrest/gestures/symbol/Point;

    iget v2, v0, Lcom/hcrest/gestures/symbol/Point;->x:F

    sub-float v2, p1, v2

    iget v3, v0, Lcom/hcrest/gestures/symbol/Point;->y:F

    sub-float v3, p2, v3

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/hcrest/gestures/symbol/Point;-><init>(FFFF)V

    .restart local v1    # "newPoint":Lcom/hcrest/gestures/symbol/Point;
    goto :goto_0
.end method

.method public offset(FF)Lcom/hcrest/gestures/symbol/PathSegment;
    .locals 8
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .prologue
    const/4 v5, 0x0

    .line 320
    cmpl-float v4, p1, v5

    if-nez v4, :cond_1

    cmpl-float v4, p2, v5

    if-nez v4, :cond_1

    .line 321
    invoke-static {p0}, Lcom/hcrest/gestures/symbol/PathSegment;->copyOf(Lcom/hcrest/gestures/symbol/PathSegment;)Lcom/hcrest/gestures/symbol/PathSegment;

    move-result-object v1

    .line 337
    :cond_0
    return-object v1

    .line 324
    :cond_1
    new-instance v1, Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-direct {v1}, Lcom/hcrest/gestures/symbol/PathSegment;-><init>()V

    .line 325
    .local v1, "out":Lcom/hcrest/gestures/symbol/PathSegment;
    invoke-virtual {p0}, Lcom/hcrest/gestures/symbol/PathSegment;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 327
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/hcrest/gestures/symbol/Point;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 328
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hcrest/gestures/symbol/Point;

    .line 329
    .local v2, "p1":Lcom/hcrest/gestures/symbol/Point;
    new-instance v3, Lcom/hcrest/gestures/symbol/Point;

    iget v4, v2, Lcom/hcrest/gestures/symbol/Point;->x:F

    add-float/2addr v4, p1

    iget v5, v2, Lcom/hcrest/gestures/symbol/Point;->y:F

    add-float/2addr v5, p2

    iget v6, v2, Lcom/hcrest/gestures/symbol/Point;->dx:F

    iget v7, v2, Lcom/hcrest/gestures/symbol/Point;->dy:F

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/hcrest/gestures/symbol/Point;-><init>(FFFF)V

    .line 334
    .local v3, "p2":Lcom/hcrest/gestures/symbol/Point;
    invoke-virtual {v1, v3}, Lcom/hcrest/gestures/symbol/PathSegment;->addPoint(Lcom/hcrest/gestures/symbol/Point;)V

    goto :goto_0
.end method

.method public save(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 516
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 517
    .local v2, "w":Ljava/io/PrintWriter;
    iget-object v3, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hcrest/gestures/symbol/Point;

    .line 518
    .local v1, "p":Lcom/hcrest/gestures/symbol/Point;
    invoke-virtual {v1}, Lcom/hcrest/gestures/symbol/Point;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 520
    .end local v1    # "p":Lcom/hcrest/gestures/symbol/Point;
    :cond_0
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 521
    return-void
.end method

.method public scale(FZ)Lcom/hcrest/gestures/symbol/PathSegment;
    .locals 10
    .param p1, "scaleFactor"    # F
    .param p2, "scaleAroundCenter"    # Z

    .prologue
    .line 285
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p1, v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-nez v6, :cond_2

    .line 286
    :cond_0
    invoke-static {p0}, Lcom/hcrest/gestures/symbol/PathSegment;->copyOf(Lcom/hcrest/gestures/symbol/PathSegment;)Lcom/hcrest/gestures/symbol/PathSegment;

    move-result-object v1

    .line 309
    :cond_1
    return-object v1

    .line 289
    :cond_2
    const/4 v4, 0x0

    .line 290
    .local v4, "regX":F
    const/4 v5, 0x0

    .line 291
    .local v5, "regY":F
    if-eqz p2, :cond_3

    .line 292
    invoke-virtual {p0}, Lcom/hcrest/gestures/symbol/PathSegment;->getCenterX()F

    move-result v6

    mul-float v4, v6, p1

    .line 293
    invoke-virtual {p0}, Lcom/hcrest/gestures/symbol/PathSegment;->getCenterY()F

    move-result v6

    mul-float v5, v6, p1

    .line 296
    :cond_3
    new-instance v1, Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-direct {v1}, Lcom/hcrest/gestures/symbol/PathSegment;-><init>()V

    .line 297
    .local v1, "out":Lcom/hcrest/gestures/symbol/PathSegment;
    invoke-virtual {p0}, Lcom/hcrest/gestures/symbol/PathSegment;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 299
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/hcrest/gestures/symbol/Point;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 300
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hcrest/gestures/symbol/Point;

    .line 301
    .local v2, "p1":Lcom/hcrest/gestures/symbol/Point;
    new-instance v3, Lcom/hcrest/gestures/symbol/Point;

    iget v6, v2, Lcom/hcrest/gestures/symbol/Point;->x:F

    mul-float/2addr v6, p1

    sub-float/2addr v6, v4

    iget v7, v2, Lcom/hcrest/gestures/symbol/Point;->y:F

    mul-float/2addr v7, p1

    sub-float/2addr v7, v5

    iget v8, v2, Lcom/hcrest/gestures/symbol/Point;->dx:F

    mul-float/2addr v8, p1

    iget v9, v2, Lcom/hcrest/gestures/symbol/Point;->dy:F

    mul-float/2addr v9, p1

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/hcrest/gestures/symbol/Point;-><init>(FFFF)V

    .line 306
    .local v3, "p2":Lcom/hcrest/gestures/symbol/Point;
    invoke-virtual {v1, v3}, Lcom/hcrest/gestures/symbol/PathSegment;->addPoint(Lcom/hcrest/gestures/symbol/Point;)V

    goto :goto_0
.end method

.method protected setCachedResult(Lcom/hcrest/gestures/symbol/SymbolGestureResult;)V
    .locals 0
    .param p1, "result"    # Lcom/hcrest/gestures/symbol/SymbolGestureResult;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mCachedResult:Lcom/hcrest/gestures/symbol/SymbolGestureResult;

    .line 474
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subPath(II)Lcom/hcrest/gestures/symbol/PathSegment;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/hcrest/gestures/symbol/PathSegment;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 129
    invoke-virtual {p0}, Lcom/hcrest/gestures/symbol/PathSegment;->size()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 130
    new-instance v1, Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-direct {v1}, Lcom/hcrest/gestures/symbol/PathSegment;-><init>()V

    .line 131
    .local v1, "result":Lcom/hcrest/gestures/symbol/PathSegment;
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 132
    invoke-virtual {p0, v0}, Lcom/hcrest/gestures/symbol/PathSegment;->getPoint(I)Lcom/hcrest/gestures/symbol/Point;

    move-result-object v2

    iget v2, v2, Lcom/hcrest/gestures/symbol/Point;->dx:F

    invoke-virtual {p0, v0}, Lcom/hcrest/gestures/symbol/PathSegment;->getPoint(I)Lcom/hcrest/gestures/symbol/Point;

    move-result-object v3

    iget v3, v3, Lcom/hcrest/gestures/symbol/Point;->dy:F

    invoke-virtual {v1, v2, v3}, Lcom/hcrest/gestures/symbol/PathSegment;->moveBy(FF)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-object v1
.end method

.method public toArray()[[F
    .locals 6

    .prologue
    .line 179
    iget-object v3, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 180
    .local v0, "data":[[F
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 181
    aget-object v4, v0, v1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hcrest/gestures/symbol/Point;

    iget v3, v3, Lcom/hcrest/gestures/symbol/Point;->x:F

    aput v3, v4, v5

    .line 182
    aget-object v4, v0, v1

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hcrest/gestures/symbol/Point;

    iget v3, v3, Lcom/hcrest/gestures/symbol/Point;->y:F

    aput v3, v4, v5

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const/4 v0, 0x1

    .line 495
    .local v0, "first":Z
    iget-object v4, p0, Lcom/hcrest/gestures/symbol/PathSegment;->mPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hcrest/gestures/symbol/Point;

    .line 496
    .local v2, "p":Lcom/hcrest/gestures/symbol/Point;
    if-nez v0, :cond_0

    .line 497
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const/4 v0, 0x0

    goto :goto_0

    .line 502
    .end local v2    # "p":Lcom/hcrest/gestures/symbol/Point;
    :cond_1
    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
