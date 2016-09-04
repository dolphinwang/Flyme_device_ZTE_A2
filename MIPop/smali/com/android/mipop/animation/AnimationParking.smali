.class public Lcom/android/mipop/animation/AnimationParking;
.super Ljava/lang/Object;
.source "AnimationParking.java"


# static fields
.field public static final LEFT:Z = true

.field public static final RIGHT:Z

.field private static TAG:Ljava/lang/String;

.field public static baseX:I

.field public static baseY:I

.field private static handler4Parking:Landroid/os/Handler;

.field private static handler4Shrink:Landroid/os/Handler;

.field private static handlerShrink:Landroid/os/Handler;

.field private static homeX:I

.field private static homeY:I

.field private static isOpen:Z

.field private static keyguardX:I

.field private static keyguardY:I

.field private static mAutoUpdatePeriod:J

.field public static mOriginSide:Z

.field private static mStep:I

.field private static menuX:I

.field private static menuY:I

.field private static recentX:I

.field private static recentY:I

.field private static runnable4Parking:Ljava/lang/Runnable;

.field private static runnable4Shrink:Ljava/lang/Runnable;

.field private static runnableShrink:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    const-string v0, "AnimationParking"

    sput-object v0, Lcom/android/mipop/animation/AnimationParking;->TAG:Ljava/lang/String;

    .line 32
    sget v0, Lcom/android/mipop/widget/MeterBase;->baseX:I

    sput v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 33
    sget v0, Lcom/android/mipop/widget/MeterBase;->baseY:I

    sput v0, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    .line 36
    const-wide/16 v0, 0xa

    sput-wide v0, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    .line 39
    sput-boolean v2, Lcom/android/mipop/animation/AnimationParking;->isOpen:Z

    .line 42
    sput v2, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    .line 43
    sput v2, Lcom/android/mipop/animation/AnimationParking;->recentY:I

    .line 44
    sput v2, Lcom/android/mipop/animation/AnimationParking;->homeX:I

    .line 45
    sput v2, Lcom/android/mipop/animation/AnimationParking;->homeY:I

    .line 46
    sput v2, Lcom/android/mipop/animation/AnimationParking;->menuX:I

    .line 47
    sput v2, Lcom/android/mipop/animation/AnimationParking;->menuY:I

    .line 48
    sput v2, Lcom/android/mipop/animation/AnimationParking;->keyguardX:I

    .line 49
    sput v2, Lcom/android/mipop/animation/AnimationParking;->keyguardY:I

    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    .line 59
    const/16 v0, 0x14

    sput v0, Lcom/android/mipop/animation/AnimationParking;->mStep:I

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/android/mipop/animation/AnimationParking$1;

    invoke-direct {v0}, Lcom/android/mipop/animation/AnimationParking$1;-><init>()V

    sput-object v0, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/android/mipop/animation/AnimationParking$2;

    invoke-direct {v0}, Lcom/android/mipop/animation/AnimationParking$2;-><init>()V

    sput-object v0, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mipop/animation/AnimationParking;->handlerShrink:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/android/mipop/animation/AnimationParking$3;

    invoke-direct {v0}, Lcom/android/mipop/animation/AnimationParking$3;-><init>()V

    sput-object v0, Lcom/android/mipop/animation/AnimationParking;->runnableShrink:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->parking()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->shrinking()V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->lastShrinking()V

    return-void
.end method

.method private static hideSub()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 539
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 540
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 541
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterMenu;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 542
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterKeyguard;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 544
    return-void
.end method

.method private static initial()V
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    sget v0, Lcom/android/mipop/widget/MeterBase;->baseX:I

    sput v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 94
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    sget v0, Lcom/android/mipop/widget/MeterBase;->baseY:I

    sput v0, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    .line 95
    return-void
.end method

.method public static land()V
    .locals 4

    .prologue
    .line 656
    const-string v1, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lxg land mOriginSide = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ,baseY = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v3, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    sget v0, Lcom/android/mipop/widget/MeterBase;->baseY:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",Until.SCREEM_HEIGHT = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    sget-boolean v0, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    if-nez v0, :cond_0

    .line 660
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->stop()V

    .line 661
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 662
    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    invoke-static {v0, v1}, Lcom/android/mipop/animation/AnimationParking;->updateBack(II)V

    .line 667
    :cond_0
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    sget v0, Lcom/android/mipop/widget/MeterBase;->baseY:I

    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    if-le v0, v1, :cond_1

    .line 668
    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    invoke-static {v0, v1}, Lcom/android/mipop/animation/AnimationParking;->updateBottom(II)V

    .line 671
    :cond_1
    invoke-static {}, Lcom/android/mipop/animation/AnimationTransparent;->start()V

    .line 672
    return-void
.end method

.method private static lastShrinking()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 610
    sget v0, Lcom/android/mipop/animation/AnimationParking;->mStep:I

    .line 611
    .local v0, "step":I
    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v2, Lcom/android/mipop/widget/Until;->MID_LINE:I

    if-ge v1, v2, :cond_0

    .line 612
    neg-int v0, v0

    .line 616
    :cond_0
    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    add-int/2addr v1, v0

    sput v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 617
    const-string v1, "Lxg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lxg shrinking x= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v2, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    invoke-static {v1, v2}, Lcom/android/mipop/animation/AnimationParking;->updateAll(II)V

    .line 620
    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v2, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v3, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_1

    .line 623
    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v2, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v1, v2

    sput v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 625
    sput-boolean v4, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    .line 627
    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->handlerShrink:Landroid/os/Handler;

    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->runnableShrink:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 629
    const-string v1, "Suhao.TransParent"

    const-string v2, "lxg last AnimationParking.shrinking(), baseX>SCREEN_WIDTH-IMAGE_WIDTH"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-static {}, Lcom/android/mipop/animation/AnimationTransparent;->start()V

    .line 632
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->hideSub()V

    .line 648
    :goto_0
    return-void

    .line 633
    :cond_1
    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    if-gt v1, v5, :cond_2

    .line 636
    sput v4, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 637
    sput-boolean v5, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    .line 638
    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->handlerShrink:Landroid/os/Handler;

    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->runnableShrink:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 640
    const-string v1, "Suhao.TransParent"

    const-string v2, "lxg last AnimationParking.shrinking(), baseX<1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-static {}, Lcom/android/mipop/animation/AnimationTransparent;->start()V

    .line 642
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->hideSub()V

    goto :goto_0

    .line 645
    :cond_2
    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->handlerShrink:Landroid/os/Handler;

    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->runnableShrink:Ljava/lang/Runnable;

    sget-wide v4, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static parking()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 188
    const-string v0, "Suhao"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parking baseX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->showSub()V

    .line 190
    sget-boolean v0, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    if-ne v3, v0, :cond_1

    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_LEFT:I

    if-ge v0, v1, :cond_1

    .line 192
    invoke-static {v3}, Lcom/android/mipop/animation/AnimationParking;->parking2Margin(Z)V

    .line 199
    :cond_0
    :goto_0
    const-string v0, "MBack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void

    .line 193
    :cond_1
    sget-boolean v0, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    if-nez v0, :cond_0

    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_RIGHT:I

    if-le v0, v1, :cond_0

    .line 196
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mipop/animation/AnimationParking;->parking2Margin(Z)V

    goto :goto_0
.end method

.method private static parking2Margin(Z)V
    .locals 6
    .param p0, "side"    # Z

    .prologue
    const-wide/16 v4, 0x7d0

    .line 210
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    .line 211
    .local v0, "margin":I
    if-nez p0, :cond_0

    .line 212
    sget v2, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v3, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sub-int v0, v2, v3

    .line 216
    :cond_0
    sget v1, Lcom/android/mipop/animation/AnimationParking;->mStep:I

    .line 217
    .local v1, "step":I
    sget v2, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    if-le v2, v0, :cond_1

    .line 218
    sget v2, Lcom/android/mipop/animation/AnimationParking;->mStep:I

    neg-int v1, v2

    .line 222
    :cond_1
    sget v2, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    add-int/2addr v2, v1

    sput v2, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 223
    sget v2, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v3, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    invoke-static {v2, v3}, Lcom/android/mipop/animation/AnimationParking;->updateAll(II)V

    .line 225
    sget v2, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xa

    if-gt v2, v3, :cond_2

    .line 227
    sput v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 228
    sget v2, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v3, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    invoke-static {v2, v3}, Lcom/android/mipop/animation/AnimationParking;->updateAll(II)V

    .line 230
    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v3, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->handlerShrink:Landroid/os/Handler;

    sget-object v3, Lcom/android/mipop/animation/AnimationParking;->runnableShrink:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->handlerShrink:Landroid/os/Handler;

    sget-object v3, Lcom/android/mipop/animation/AnimationParking;->runnableShrink:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    :goto_0
    return-void

    .line 234
    :cond_2
    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v3, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v3, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    sget-wide v4, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static posCalculateLeftX(II)V
    .locals 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 440
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    if-ge p0, v0, :cond_1

    .line 441
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lxg posCalculateLeftX Left expend x ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    sput p0, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    .line 444
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lxg posCalculateLeftX Left expend recentX ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    mul-int/lit8 v0, p0, 0x2

    div-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p1

    sput v0, Lcom/android/mipop/animation/AnimationParking;->recentY:I

    .line 447
    mul-int/lit8 v0, p0, 0x2

    div-int/lit8 v0, v0, 0x5

    sput v0, Lcom/android/mipop/animation/AnimationParking;->homeX:I

    .line 448
    mul-int/lit8 v0, p0, 0xc

    div-int/lit8 v0, v0, 0xd

    sub-int v0, p1, v0

    sput v0, Lcom/android/mipop/animation/AnimationParking;->homeY:I

    .line 450
    mul-int/lit8 v0, p0, 0x2

    div-int/lit8 v0, v0, 0x5

    sput v0, Lcom/android/mipop/animation/AnimationParking;->menuX:I

    .line 451
    mul-int/lit8 v0, p0, 0xc

    div-int/lit8 v0, v0, 0xd

    add-int/2addr v0, p1

    sput v0, Lcom/android/mipop/animation/AnimationParking;->menuY:I

    .line 453
    sput p0, Lcom/android/mipop/animation/AnimationParking;->keyguardX:I

    .line 454
    mul-int/lit8 v0, p0, 0x2

    div-int/lit8 v0, v0, 0x5

    sub-int v0, p1, v0

    sput v0, Lcom/android/mipop/animation/AnimationParking;->keyguardY:I

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    sget v0, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_LEFT:I

    if-ge p0, v0, :cond_2

    .line 456
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lxg posCalculateLeftX Left follow x ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    sput p0, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    .line 459
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lxg posCalculateLeftX Left follow recentX ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    mul-int/lit8 v0, p0, 0x2

    div-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p1

    sput v0, Lcom/android/mipop/animation/AnimationParking;->recentY:I

    .line 462
    mul-int/lit8 v0, p0, 0x2

    div-int/lit8 v0, v0, 0x5

    sput v0, Lcom/android/mipop/animation/AnimationParking;->homeX:I

    .line 463
    mul-int/lit8 v0, p0, 0xc

    div-int/lit8 v0, v0, 0xd

    sub-int v0, p1, v0

    sput v0, Lcom/android/mipop/animation/AnimationParking;->homeY:I

    .line 465
    mul-int/lit8 v0, p0, 0x2

    div-int/lit8 v0, v0, 0x5

    sput v0, Lcom/android/mipop/animation/AnimationParking;->menuX:I

    .line 466
    mul-int/lit8 v0, p0, 0xc

    div-int/lit8 v0, v0, 0xd

    add-int/2addr v0, p1

    sput v0, Lcom/android/mipop/animation/AnimationParking;->menuY:I

    .line 468
    sput p0, Lcom/android/mipop/animation/AnimationParking;->keyguardX:I

    .line 469
    mul-int/lit8 v0, p0, 0x2

    div-int/lit8 v0, v0, 0x5

    sub-int v0, p1, v0

    sput v0, Lcom/android/mipop/animation/AnimationParking;->keyguardY:I

    goto :goto_0

    .line 470
    :cond_2
    sget v0, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_LEFT:I

    sget v1, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    add-int/2addr v0, v1

    if-ge p0, v0, :cond_3

    .line 473
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lxg posCalculateLeftX shrink x ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sub-int v0, p0, v0

    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_LEFT:I

    sub-int v2, p0, v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    .line 478
    sput p1, Lcom/android/mipop/animation/AnimationParking;->recentY:I

    .line 480
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_LEFT:I

    sub-int v2, p0, v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/animation/AnimationParking;->homeX:I

    .line 483
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_LEFT:I

    sub-int v2, p0, v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/animation/AnimationParking;->homeY:I

    .line 487
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_LEFT:I

    sub-int v2, p0, v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/animation/AnimationParking;->menuX:I

    .line 490
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_LEFT:I

    sub-int v2, p0, v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/animation/AnimationParking;->menuY:I

    .line 493
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_LEFT:I

    sub-int v2, p0, v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/animation/AnimationParking;->keyguardX:I

    .line 496
    sput p1, Lcom/android/mipop/animation/AnimationParking;->keyguardY:I

    goto/16 :goto_0

    .line 497
    :cond_3
    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    if-ne v0, v1, :cond_0

    .line 499
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lxg posCalculateLeftX another area x ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    sput p0, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    .line 501
    sput p1, Lcom/android/mipop/animation/AnimationParking;->recentY:I

    .line 503
    sput p0, Lcom/android/mipop/animation/AnimationParking;->homeX:I

    .line 504
    sput p1, Lcom/android/mipop/animation/AnimationParking;->homeY:I

    .line 506
    sput p0, Lcom/android/mipop/animation/AnimationParking;->menuX:I

    .line 507
    sput p1, Lcom/android/mipop/animation/AnimationParking;->menuY:I

    .line 509
    sput p0, Lcom/android/mipop/animation/AnimationParking;->keyguardX:I

    .line 510
    sput p1, Lcom/android/mipop/animation/AnimationParking;->keyguardY:I

    .line 512
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->hideSub()V

    goto/16 :goto_0
.end method

.method private static showSub()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 550
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 551
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 552
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterKeyguard;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 553
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterMenu;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 554
    return-void
.end method

.method public static shrinkStart()V
    .locals 4

    .prologue
    .line 169
    const-string v0, "Suhao"

    const-string v1, "shrinkStart() shrinked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handlerShrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnableShrink:Ljava/lang/Runnable;

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    return-void
.end method

.method private static shrinking()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 562
    sget v0, Lcom/android/mipop/animation/AnimationParking;->mStep:I

    .line 563
    .local v0, "step":I
    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v2, Lcom/android/mipop/widget/Until;->MID_LINE:I

    if-ge v1, v2, :cond_0

    .line 564
    neg-int v0, v0

    .line 568
    :cond_0
    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    add-int/2addr v1, v0

    sput v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 569
    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v2, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    invoke-static {v1, v2}, Lcom/android/mipop/animation/AnimationParking;->updateBack(II)V

    .line 571
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lxg isOpen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mipop/animation/AnimationParking;->isOpen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",baseX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v2, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v3, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_2

    .line 576
    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v2, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v1, v2

    sput v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 577
    sput-boolean v6, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    .line 578
    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 580
    sget-boolean v1, Lcom/android/mipop/animation/AnimationParking;->isOpen:Z

    if-eqz v1, :cond_1

    .line 581
    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    sget-wide v4, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 582
    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    sget-wide v4, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 583
    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    sget-wide v4, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 585
    :cond_1
    sput-boolean v6, Lcom/android/mipop/animation/AnimationParking;->isOpen:Z

    .line 603
    :goto_0
    return-void

    .line 586
    :cond_2
    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    if-gt v1, v4, :cond_4

    .line 589
    sput v6, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 590
    sput-boolean v4, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    .line 591
    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 593
    sget-boolean v1, Lcom/android/mipop/animation/AnimationParking;->isOpen:Z

    if-eqz v1, :cond_3

    .line 594
    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    sget-wide v4, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 595
    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    sget-wide v4, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 596
    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    sget-wide v4, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 598
    :cond_3
    sput-boolean v6, Lcom/android/mipop/animation/AnimationParking;->isOpen:Z

    goto :goto_0

    .line 601
    :cond_4
    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v4, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static start()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    const-string v0, "Suhao"

    const-string v1, "AnimationParking start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->initial()V

    .line 102
    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    if-gtz v0, :cond_0

    .line 104
    const-string v0, "Suhao.TransParent"

    const-string v1, "AnimationParking.start(), baseX<0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sput-boolean v4, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    .line 106
    sput v3, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 107
    invoke-static {}, Lcom/android/mipop/animation/AnimationTransparent;->start()V

    .line 163
    :goto_0
    return-void

    .line 109
    :cond_0
    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v2, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    .line 111
    const-string v0, "Suhao.TransParent"

    const-string v1, "AnimationParking.start(), baseX>SCREEN_WIDTH-IMAGE_WIDTH"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sput-boolean v3, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    .line 114
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 115
    invoke-static {}, Lcom/android/mipop/animation/AnimationTransparent;->start()V

    goto :goto_0

    .line 120
    :cond_1
    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    invoke-static {v0, v1}, Lcom/android/mipop/animation/AnimationParking;->updateTop(II)V

    .line 121
    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    invoke-static {v0, v1}, Lcom/android/mipop/animation/AnimationParking;->updateBottom(II)V

    .line 124
    sput-boolean v3, Lcom/android/mipop/animation/AnimationParking;->isOpen:Z

    .line 125
    const-string v0, "lxg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lxg baseX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/widget/Until;->PARKING_LINE:I

    if-le v0, v1, :cond_2

    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_LEFT:I

    if-lt v0, v1, :cond_3

    :cond_2
    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_RIGHT:I

    if-le v0, v1, :cond_4

    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v2, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lcom/android/mipop/widget/Until;->PARKING_LINE:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_4

    .line 129
    :cond_3
    sput-boolean v4, Lcom/android/mipop/animation/AnimationParking;->isOpen:Z

    .line 133
    :cond_4
    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_LEFT:I

    if-lt v0, v1, :cond_5

    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_RIGHT:I

    if-le v0, v1, :cond_6

    .line 137
    :cond_5
    const-string v0, "Suhao"

    const-string v1, "LEFT && > PARKING_LINE_RIGHT shrinked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 141
    :cond_6
    sget-boolean v0, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    if-ne v4, v0, :cond_7

    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_LEFT:I

    if-le v0, v1, :cond_7

    .line 145
    const-string v0, "Suhao"

    const-string v1, "LEFT && > AREA_CHANGED_LINE_LEFT shrinked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 149
    :cond_7
    sget-boolean v0, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    if-nez v0, :cond_8

    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_RIGHT:I

    if-ge v0, v1, :cond_8

    .line 153
    const-string v0, "Suhao"

    const-string v1, "LEFT && > AREA_CHANGED_LINE_RIGHT shrinked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 159
    :cond_8
    const-string v0, "Suhao"

    const-string v1, "else"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public static stop()V
    .locals 2

    .prologue
    .line 177
    const-string v0, "Suhao.TransParent"

    const-string v1, "AnimationParking.stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {}, Lcom/android/mipop/animation/AnimationTransparent;->stop()V

    .line 179
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handlerShrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnableShrink:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    return-void
.end method

.method public static updateAll(II)V
    .locals 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 257
    const-string v0, "lxg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lxg updateAll x ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    if-ne v0, v1, :cond_0

    .line 259
    invoke-static {p0, p1}, Lcom/android/mipop/animation/AnimationParking;->updateAllLeft(II)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-static {p0, p1}, Lcom/android/mipop/animation/AnimationParking;->updateAllRight(II)V

    goto :goto_0
.end method

.method private static updateAllLeft(II)V
    .locals 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 526
    invoke-static {p0, p1}, Lcom/android/mipop/animation/AnimationParking;->posCalculateLeftX(II)V

    .line 528
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterKeyguard;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    sget v1, Lcom/android/mipop/animation/AnimationParking;->keyguardX:I

    sget v2, Lcom/android/mipop/animation/AnimationParking;->keyguardY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mipop/widget/MeterBase;->update(II)V

    .line 529
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    sget v1, Lcom/android/mipop/animation/AnimationParking;->homeX:I

    sget v2, Lcom/android/mipop/animation/AnimationParking;->homeY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mipop/widget/MeterBase;->update(II)V

    .line 530
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterMenu;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    sget v1, Lcom/android/mipop/animation/AnimationParking;->menuX:I

    sget v2, Lcom/android/mipop/animation/AnimationParking;->menuY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mipop/widget/MeterBase;->update(II)V

    .line 531
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    sget v1, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    sget v2, Lcom/android/mipop/animation/AnimationParking;->recentY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mipop/widget/MeterBase;->update(II)V

    .line 533
    return-void
.end method

.method private static updateAllRight(II)V
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 349
    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE_RIGHT:I

    if-le p0, v1, :cond_1

    .line 350
    const-string v1, "lxg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lxg Right expend x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v2, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v1, v2

    sub-int v0, v1, p0

    .line 352
    .local v0, "w":I
    sput p0, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    .line 353
    mul-int/lit8 v1, v0, 0x2

    div-int/lit8 v1, v1, 0x5

    add-int/2addr v1, p1

    sput v1, Lcom/android/mipop/animation/AnimationParking;->recentY:I

    .line 355
    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x5

    add-int/2addr v1, p0

    sput v1, Lcom/android/mipop/animation/AnimationParking;->homeX:I

    .line 356
    mul-int/lit8 v1, v0, 0xc

    div-int/lit8 v1, v1, 0xd

    sub-int v1, p1, v1

    sput v1, Lcom/android/mipop/animation/AnimationParking;->homeY:I

    .line 358
    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x5

    add-int/2addr v1, p0

    sput v1, Lcom/android/mipop/animation/AnimationParking;->menuX:I

    .line 359
    mul-int/lit8 v1, v0, 0xc

    div-int/lit8 v1, v1, 0xd

    add-int/2addr v1, p1

    sput v1, Lcom/android/mipop/animation/AnimationParking;->menuY:I

    .line 361
    sput p0, Lcom/android/mipop/animation/AnimationParking;->keyguardX:I

    .line 362
    mul-int/lit8 v1, v0, 0x2

    div-int/lit8 v1, v1, 0x5

    sub-int v1, p1, v1

    sput v1, Lcom/android/mipop/animation/AnimationParking;->keyguardY:I

    .line 423
    .end local v0    # "w":I
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/widget/MeterBase;

    sget v2, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    sget v3, Lcom/android/mipop/animation/AnimationParking;->recentY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/mipop/widget/MeterBase;->update(II)V

    .line 424
    sget-object v1, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/mipop/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/widget/MeterBase;

    sget v2, Lcom/android/mipop/animation/AnimationParking;->homeX:I

    sget v3, Lcom/android/mipop/animation/AnimationParking;->homeY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/mipop/widget/MeterBase;->update(II)V

    .line 425
    sget-object v1, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/mipop/widget/MeterMenu;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/widget/MeterBase;

    sget v2, Lcom/android/mipop/animation/AnimationParking;->menuX:I

    sget v3, Lcom/android/mipop/animation/AnimationParking;->menuY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/mipop/widget/MeterBase;->update(II)V

    .line 426
    sget-object v1, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/mipop/widget/MeterKeyguard;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/widget/MeterBase;

    sget v2, Lcom/android/mipop/animation/AnimationParking;->keyguardX:I

    sget v3, Lcom/android/mipop/animation/AnimationParking;->keyguardY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/mipop/widget/MeterBase;->update(II)V

    .line 428
    return-void

    .line 364
    :cond_1
    sget v1, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_RIGHT:I

    if-le p0, v1, :cond_2

    .line 365
    const-string v1, "lxg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lxg Right follow x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v2, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v1, v2

    sub-int v0, v1, p0

    .line 367
    .restart local v0    # "w":I
    sput p0, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    .line 368
    mul-int/lit8 v1, v0, 0x2

    div-int/lit8 v1, v1, 0x5

    add-int/2addr v1, p1

    sput v1, Lcom/android/mipop/animation/AnimationParking;->recentY:I

    .line 370
    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x5

    add-int/2addr v1, p0

    sput v1, Lcom/android/mipop/animation/AnimationParking;->homeX:I

    .line 371
    mul-int/lit8 v1, v0, 0xc

    div-int/lit8 v1, v1, 0xd

    sub-int v1, p1, v1

    sput v1, Lcom/android/mipop/animation/AnimationParking;->homeY:I

    .line 373
    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x5

    add-int/2addr v1, p0

    sput v1, Lcom/android/mipop/animation/AnimationParking;->menuX:I

    .line 374
    mul-int/lit8 v1, v0, 0xc

    div-int/lit8 v1, v1, 0xd

    add-int/2addr v1, p1

    sput v1, Lcom/android/mipop/animation/AnimationParking;->menuY:I

    .line 376
    sput p0, Lcom/android/mipop/animation/AnimationParking;->keyguardX:I

    .line 377
    mul-int/lit8 v1, v0, 0x2

    div-int/lit8 v1, v1, 0x5

    sub-int v1, p1, v1

    sput v1, Lcom/android/mipop/animation/AnimationParking;->keyguardY:I

    goto/16 :goto_0

    .line 378
    .end local v0    # "w":I
    :cond_2
    sget v1, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_RIGHT:I

    sget v2, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    sub-int/2addr v1, v2

    if-le p0, v1, :cond_3

    .line 381
    const-string v1, "lxg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lxg Right shrink x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    add-int/2addr v1, p0

    sget v2, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sget v3, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    div-int/2addr v2, v3

    sget v3, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_RIGHT:I

    sub-int v3, p0, v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    sput v1, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    .line 385
    sput p1, Lcom/android/mipop/animation/AnimationParking;->recentY:I

    .line 387
    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p0

    sget v2, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sget v3, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    div-int/2addr v2, v3

    sget v3, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_RIGHT:I

    sub-int v3, p0, v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sput v1, Lcom/android/mipop/animation/AnimationParking;->homeX:I

    .line 390
    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    sget v2, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sget v3, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    div-int/2addr v2, v3

    sget v3, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_RIGHT:I

    sub-int v3, p0, v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sput v1, Lcom/android/mipop/animation/AnimationParking;->homeY:I

    .line 394
    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p0

    sget v2, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sget v3, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    div-int/2addr v2, v3

    sget v3, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_RIGHT:I

    sub-int v3, p0, v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sput v1, Lcom/android/mipop/animation/AnimationParking;->menuX:I

    .line 397
    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    sget v2, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sget v3, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    div-int/2addr v2, v3

    sget v3, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_RIGHT:I

    sub-int v3, p0, v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sput v1, Lcom/android/mipop/animation/AnimationParking;->menuY:I

    .line 400
    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p0

    sget v2, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sget v3, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    div-int/2addr v2, v3

    sget v3, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_RIGHT:I

    sub-int v3, p0, v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sput v1, Lcom/android/mipop/animation/AnimationParking;->keyguardX:I

    .line 403
    sput p1, Lcom/android/mipop/animation/AnimationParking;->keyguardY:I

    goto/16 :goto_0

    .line 404
    :cond_3
    sget-boolean v1, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    if-nez v1, :cond_0

    .line 406
    const-string v1, "lxg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lxg Right another area x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    sput p0, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    .line 408
    sput p1, Lcom/android/mipop/animation/AnimationParking;->recentY:I

    .line 410
    sput p0, Lcom/android/mipop/animation/AnimationParking;->homeX:I

    .line 411
    sput p1, Lcom/android/mipop/animation/AnimationParking;->homeY:I

    .line 413
    sput p0, Lcom/android/mipop/animation/AnimationParking;->menuX:I

    .line 414
    sput p1, Lcom/android/mipop/animation/AnimationParking;->menuY:I

    .line 416
    sput p0, Lcom/android/mipop/animation/AnimationParking;->keyguardX:I

    .line 417
    sput p1, Lcom/android/mipop/animation/AnimationParking;->keyguardY:I

    .line 419
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->hideSub()V

    goto/16 :goto_0
.end method

.method public static updateBack(II)V
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 242
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, p0, p1}, Lcom/android/mipop/widget/MeterBase;->update(II)V

    .line 243
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    sput p0, Lcom/android/mipop/widget/MeterBase;->baseX:I

    .line 244
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    sput p1, Lcom/android/mipop/widget/MeterBase;->baseY:I

    .line 245
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->hideSub()V

    .line 246
    return-void
.end method

.method private static updateBottom(II)V
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 309
    sget v0, Lcom/android/mipop/widget/Until;->BOTTOM_LINE:I

    if-gt p1, v0, :cond_0

    .line 310
    const-string v0, "Bottom"

    const-string v1, "return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :goto_0
    return-void

    .line 333
    :cond_0
    sget p1, Lcom/android/mipop/widget/Until;->BOTTOM_LINE:I

    .line 334
    sput p0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 335
    sput p1, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    goto :goto_0
.end method

.method private static updateTop(II)V
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 275
    const-wide v0, 0x3fe69fbe76c8b439L    # 0.707

    sget v2, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    if-lt p1, v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    if-ne v0, v1, :cond_2

    .line 281
    sget v0, Lcom/android/mipop/widget/Until;->PARKING_LINE:I

    if-lt p0, v0, :cond_0

    sget v0, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_LEFT:I

    if-ge p0, v0, :cond_0

    .line 282
    sget p1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    .line 283
    sput p0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 284
    sput p1, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    goto :goto_0

    .line 288
    :cond_2
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->PARKING_LINE:I

    sub-int/2addr v0, v1

    if-gt p0, v0, :cond_0

    sget v0, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_RIGHT:I

    if-le p0, v0, :cond_0

    .line 290
    sget p1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    .line 291
    sput p0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 292
    sput p1, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    goto :goto_0
.end method
