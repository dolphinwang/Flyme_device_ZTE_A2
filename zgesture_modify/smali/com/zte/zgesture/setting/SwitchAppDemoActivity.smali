.class public Lcom/zte/zgesture/setting/SwitchAppDemoActivity;
.super Landroid/app/Activity;
.source "SwitchAppDemoActivity.java"


# static fields
.field public static mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;


# instance fields
.field private AppListSlideRecognizerReceiver:Landroid/content/BroadcastReceiver;

.field private final DEMO_REMOVE_TIP:I

.field private final DEMO_SWITCH_TIP:I

.field private final DEMO_UP_EVENT:I

.field private appViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private backGround:Landroid/widget/RelativeLayout;

.field private bitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private curImageView:Landroid/widget/ImageView;

.field private curIndex:I

.field private iconListView:Lcom/zte/zgesture/ui/IconListView;

.field private iconsBackGround:Landroid/widget/AbsoluteLayout;

.field private inAnimating:Z

.field private inImageView:Landroid/widget/ImageView;

.field private isShowingTips:Z

.field private mControlExist:Z

.field private outAnimating:Z

.field private screenHeight:I

.field private screenWidth:I

.field private tipText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->appViews:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->bitmaps:Ljava/util/ArrayList;

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->DEMO_SWITCH_TIP:I

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->DEMO_REMOVE_TIP:I

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->DEMO_UP_EVENT:I

    .line 56
    iput-boolean v1, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->mControlExist:Z

    .line 64
    new-instance v0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$1;-><init>(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;)V

    iput-object v0, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->AppListSlideRecognizerReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    iput-boolean v1, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->isShowingTips:Z

    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/setting/SwitchAppDemoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->switchTip(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/setting/SwitchAppDemoActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->removeTip()V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/setting/SwitchAppDemoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->switchAppAnim(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/setting/SwitchAppDemoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->outAnimating:Z

    return p1
.end method

.method static synthetic access$400(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/SwitchAppDemoActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->tipText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/SwitchAppDemoActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->backGround:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$602(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/setting/SwitchAppDemoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->inAnimating:Z

    return p1
.end method

.method static synthetic access$700(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/SwitchAppDemoActivity;

    .prologue
    .line 35
    iget v0, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->screenHeight:I

    return v0
.end method

.method private addTipView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 296
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 298
    .local v2, "wm":Landroid/view/WindowManager;
    iget-object v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->iconsBackGround:Landroid/widget/AbsoluteLayout;

    if-nez v3, :cond_0

    .line 299
    new-instance v3, Landroid/widget/AbsoluteLayout;

    invoke-direct {v3, p0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->iconsBackGround:Landroid/widget/AbsoluteLayout;

    .line 300
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 301
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x33

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 302
    iget v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->screenWidth:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 303
    iget v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->screenHeight:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 304
    const/4 v3, -0x3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 305
    const/16 v3, 0x28

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 306
    const/16 v3, 0x7d6

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 307
    iget-object v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->iconsBackGround:Landroid/widget/AbsoluteLayout;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    if-nez v3, :cond_1

    .line 311
    new-instance v3, Lcom/zte/zgesture/ui/IconListView;

    invoke-direct {v3, p0, v5}, Lcom/zte/zgesture/ui/IconListView;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    .line 312
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->screenWidth:I

    iget v4, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->screenHeight:I

    div-int/lit8 v4, v4, 0x8

    invoke-direct {v1, v3, v4, v5, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 313
    .local v1, "tipParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->iconsBackGround:Landroid/widget/AbsoluteLayout;

    iget-object v4, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    .end local v1    # "tipParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private cleanBitmap()V
    .locals 3

    .prologue
    .line 205
    iget-object v2, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 206
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 208
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private generateIconList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v3, "iconList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 334
    .local v0, "icon1":Landroid/widget/ImageView;
    const v4, 0x7f020267

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 338
    .local v1, "icon2":Landroid/widget/ImageView;
    const v4, 0x7f020268

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 339
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 342
    .local v2, "icon3":Landroid/widget/ImageView;
    const v4, 0x7f020269

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 343
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    return-object v3
.end method

.method private removeTip()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->removeTipView()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->isShowingTips:Z

    .line 114
    return-void
.end method

.method private removeTipView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 318
    iget-object v1, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->iconsBackGround:Landroid/widget/AbsoluteLayout;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->iconsBackGround:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1}, Landroid/widget/AbsoluteLayout;->removeAllViews()V

    .line 320
    iput-object v2, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->iconsBackGround:Landroid/widget/AbsoluteLayout;

    if-eqz v1, :cond_1

    .line 324
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 325
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->iconsBackGround:Landroid/widget/AbsoluteLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 326
    iput-object v2, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->iconsBackGround:Landroid/widget/AbsoluteLayout;

    .line 328
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_1
    return-void
.end method

.method public static setStatusListener(Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;)V
    .locals 0
    .param p0, "demoStatusListener"    # Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    .prologue
    .line 59
    if-eqz p0, :cond_0

    .line 60
    sput-object p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    .line 62
    :cond_0
    return-void
.end method

.method private switchAppAnim(I)V
    .locals 12
    .param p1, "direction"    # I

    .prologue
    const-wide/16 v10, 0x258

    const/16 v8, 0xd

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 212
    if-eq p1, v6, :cond_1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-boolean v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->inAnimating:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->outAnimating:Z

    if-nez v3, :cond_0

    .line 219
    iget-object v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->appViews:Ljava/util/ArrayList;

    iget v4, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->curIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->curImageView:Landroid/widget/ImageView;

    .line 220
    const/4 v2, 0x0

    .line 221
    .local v2, "outAnim":Landroid/view/animation/TranslateAnimation;
    if-ne p1, v6, :cond_2

    .line 222
    iget v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->curIndex:I

    iget-object v4, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->appViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_0

    .line 224
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .end local v2    # "outAnim":Landroid/view/animation/TranslateAnimation;
    iget v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->screenWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v2, v5, v3, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 230
    .restart local v2    # "outAnim":Landroid/view/animation/TranslateAnimation;
    :goto_1
    invoke-virtual {v2, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 231
    new-instance v3, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$3;

    invoke-direct {v3, p0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$3;-><init>(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 249
    iget-object v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->curImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 251
    if-ne p1, v6, :cond_3

    .line 252
    iget v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->curIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->curIndex:I

    .line 256
    :goto_2
    iget-object v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->backGround:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->curImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 257
    iget-object v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->appViews:Ljava/util/ArrayList;

    iget v4, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->curIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->inImageView:Landroid/widget/ImageView;

    .line 258
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 259
    .local v0, "appParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 260
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 261
    iget-object v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->backGround:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->inImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    const/4 v1, 0x0

    .line 264
    .local v1, "inAnim":Landroid/view/animation/TranslateAnimation;
    if-ne p1, v6, :cond_4

    .line 265
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "inAnim":Landroid/view/animation/TranslateAnimation;
    iget v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->screenWidth:I

    int-to-float v3, v3

    invoke-direct {v1, v3, v5, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 269
    .restart local v1    # "inAnim":Landroid/view/animation/TranslateAnimation;
    :goto_3
    invoke-virtual {v1, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 270
    new-instance v3, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$4;

    invoke-direct {v3, p0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$4;-><init>(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 291
    iget-object v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->inImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 226
    .end local v0    # "appParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "inAnim":Landroid/view/animation/TranslateAnimation;
    :cond_2
    iget v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->curIndex:I

    if-eqz v3, :cond_0

    .line 228
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .end local v2    # "outAnim":Landroid/view/animation/TranslateAnimation;
    iget v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->screenWidth:I

    int-to-float v3, v3

    invoke-direct {v2, v5, v3, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v2    # "outAnim":Landroid/view/animation/TranslateAnimation;
    goto :goto_1

    .line 254
    :cond_3
    iget v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->curIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->curIndex:I

    goto :goto_2

    .line 267
    .restart local v0    # "appParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1    # "inAnim":Landroid/view/animation/TranslateAnimation;
    :cond_4
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "inAnim":Landroid/view/animation/TranslateAnimation;
    iget v3, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->screenWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v1, v3, v5, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v1    # "inAnim":Landroid/view/animation/TranslateAnimation;
    goto :goto_3
.end method

.method private switchTip(I)V
    .locals 6
    .param p1, "dir"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 85
    const-string v1, "AppListSlideRecognizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchTip dir:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-boolean v1, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->isShowingTips:Z

    if-nez v1, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->addTipView()V

    .line 89
    iput-boolean v4, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->isShowingTips:Z

    .line 91
    :cond_0
    iget v0, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->curIndex:I

    .line 92
    .local v0, "showIndex":I
    if-ne p1, v4, :cond_1

    .line 93
    add-int/lit8 v0, v0, -0x1

    .line 94
    if-gez v0, :cond_1

    .line 95
    const/4 v0, 0x0

    .line 100
    :cond_1
    if-ne p1, v5, :cond_2

    .line 101
    add-int/lit8 v0, v0, 0x1

    .line 102
    if-le v0, v5, :cond_2

    .line 103
    const/4 v0, 0x2

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    if-eqz v1, :cond_3

    .line 107
    iget-object v1, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    invoke-direct {p0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->generateIconList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/zte/zgesture/ui/IconListView;->setIconList(Ljava/util/ArrayList;I)V

    .line 109
    :cond_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const-string v10, "window"

    invoke-virtual {p0, v10}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 121
    .local v9, "winManager":Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v10

    iput v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->screenHeight:I

    .line 122
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v10

    iput v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->screenWidth:I

    .line 124
    invoke-direct {p0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->generateIconList()Ljava/util/ArrayList;

    .line 126
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, "app1":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020204

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 128
    .local v5, "bmp1":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 130
    iget-object v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->appViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 134
    .local v1, "app2":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020205

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 135
    .local v6, "bmp2":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 137
    iget-object v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->appViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 141
    .local v2, "app3":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020206

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 142
    .local v7, "bmp3":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 144
    iget-object v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->appViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const/4 v10, 0x1

    iput v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->curIndex:I

    .line 148
    iget-object v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->appViews:Ljava/util/ArrayList;

    iget v11, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->curIndex:I

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->curImageView:Landroid/widget/ImageView;

    .line 150
    new-instance v10, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$2;

    invoke-direct {v10, p0, p0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$2;-><init>(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;Landroid/content/Context;)V

    iput-object v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->backGround:Landroid/widget/RelativeLayout;

    .line 157
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->tipText:Landroid/widget/TextView;

    .line 158
    iget-object v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->tipText:Landroid/widget/TextView;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    iget-object v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->tipText:Landroid/widget/TextView;

    const/16 v11, 0xbf

    const/16 v12, 0x18

    const/16 v13, 0x18

    const/16 v14, 0x18

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 160
    iget-object v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->tipText:Landroid/widget/TextView;

    const/16 v11, 0xa

    const/16 v12, 0xa

    const/16 v13, 0xa

    const/16 v14, 0xa

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 161
    iget-object v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->tipText:Landroid/widget/TextView;

    const/high16 v11, 0x41900000    # 18.0f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 162
    iget-object v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->tipText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09007a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 165
    .local v4, "appParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xd

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 166
    const/16 v10, 0xd

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 167
    iget-object v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->backGround:Landroid/widget/RelativeLayout;

    iget-object v11, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->curImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v11, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 170
    .local v8, "tipParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xc

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 171
    const/16 v10, 0xe

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 172
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->screenHeight:I

    div-int/lit8 v13, v13, 0xa

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 173
    iget-object v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->backGround:Landroid/widget/RelativeLayout;

    iget-object v11, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->tipText:Landroid/widget/TextView;

    invoke-virtual {v10, v11, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->backGround:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v10}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->setContentView(Landroid/view/View;)V

    .line 177
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 178
    .local v3, "appFilter":Landroid/content/IntentFilter;
    const-string v10, "AppListSlideRecognizer"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    iget-object v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->AppListSlideRecognizerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10, v3}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    sget-object v10, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    if-eqz v10, :cond_0

    .line 182
    sget-object v10, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    invoke-interface {v10}, Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;->onStartDemo()V

    .line 184
    :cond_0
    invoke-static {}, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->isExistInstance()Z

    move-result v10

    iput-boolean v10, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->mControlExist:Z

    .line 185
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;

    .line 186
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->SetDemoStatus(Z)V

    .line 187
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 192
    invoke-direct {p0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->removeTipView()V

    .line 193
    invoke-direct {p0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->cleanBitmap()V

    .line 194
    iget-object v0, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->AppListSlideRecognizerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    sget-object v0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    invoke-interface {v0}, Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;->onStopDemo()V

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->SetDemoStatus(Z)V

    .line 199
    iget-boolean v0, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->mControlExist:Z

    if-nez v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->destroyAction()V

    .line 202
    :cond_1
    return-void
.end method
