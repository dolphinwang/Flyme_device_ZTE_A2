.class public Lcom/zte/zgesture/setting/CloseAppDemoActivity;
.super Landroid/app/Activity;
.source "CloseAppDemoActivity.java"


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

.field private closeAnimating:Z

.field private curImageView:Landroid/widget/ImageView;

.field private curIndex:I

.field private iconListView:Lcom/zte/zgesture/ui/IconListView;

.field private iconRes:[I

.field private iconsBackGround:Landroid/widget/AbsoluteLayout;

.field private inAnimating:Z

.field private inImageView:Landroid/widget/ImageView;

.field private isShowingTips:Z

.field private mControlExist:Z

.field private screenHeight:I

.field private screenWidth:I

.field private tipText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->appViews:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->bitmaps:Ljava/util/ArrayList;

    .line 38
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconRes:[I

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->DEMO_SWITCH_TIP:I

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->DEMO_REMOVE_TIP:I

    .line 54
    iput v2, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->DEMO_UP_EVENT:I

    .line 55
    iput-boolean v1, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->isShowingTips:Z

    .line 58
    iput-boolean v1, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->mControlExist:Z

    .line 88
    new-instance v0, Lcom/zte/zgesture/setting/CloseAppDemoActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity$1;-><init>(Lcom/zte/zgesture/setting/CloseAppDemoActivity;)V

    iput-object v0, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->AppListSlideRecognizerReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/setting/CloseAppDemoActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/setting/CloseAppDemoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->switchTip(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/zgesture/setting/CloseAppDemoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/setting/CloseAppDemoActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->removeTip()V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/zgesture/setting/CloseAppDemoActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/setting/CloseAppDemoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->closeAppAnim(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/zgesture/setting/CloseAppDemoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/setting/CloseAppDemoActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->refeshTip()V

    return-void
.end method

.method static synthetic access$402(Lcom/zte/zgesture/setting/CloseAppDemoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/setting/CloseAppDemoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->closeAnimating:Z

    return p1
.end method

.method static synthetic access$500(Lcom/zte/zgesture/setting/CloseAppDemoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/CloseAppDemoActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->tipText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/zgesture/setting/CloseAppDemoActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/CloseAppDemoActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->backGround:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$702(Lcom/zte/zgesture/setting/CloseAppDemoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/setting/CloseAppDemoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->inAnimating:Z

    return p1
.end method

.method static synthetic access$800(Lcom/zte/zgesture/setting/CloseAppDemoActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/CloseAppDemoActivity;

    .prologue
    .line 35
    iget v0, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->screenHeight:I

    return v0
.end method

.method private addTipView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 284
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 286
    .local v2, "wm":Landroid/view/WindowManager;
    iget-object v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconsBackGround:Landroid/widget/AbsoluteLayout;

    if-nez v3, :cond_0

    .line 287
    new-instance v3, Landroid/widget/AbsoluteLayout;

    invoke-direct {v3, p0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconsBackGround:Landroid/widget/AbsoluteLayout;

    .line 288
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 289
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x33

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 290
    iget v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->screenWidth:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 291
    iget v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->screenHeight:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 292
    const/4 v3, -0x3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 293
    const/16 v3, 0x28

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 294
    const/16 v3, 0x7d6

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 295
    iget-object v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconsBackGround:Landroid/widget/AbsoluteLayout;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    if-nez v3, :cond_1

    .line 299
    new-instance v3, Lcom/zte/zgesture/ui/IconListView;

    invoke-direct {v3, p0, v5}, Lcom/zte/zgesture/ui/IconListView;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    .line 300
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->screenWidth:I

    iget v4, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->screenHeight:I

    div-int/lit8 v4, v4, 0x8

    invoke-direct {v1, v3, v4, v5, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 301
    .local v1, "tipParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconsBackGround:Landroid/widget/AbsoluteLayout;

    iget-object v4, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    .end local v1    # "tipParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private cleanBitmap()V
    .locals 3

    .prologue
    .line 198
    iget-object v2, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->bitmaps:Ljava/util/ArrayList;

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

    .line 199
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 201
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private closeAppAnim(I)V
    .locals 12
    .param p1, "direction"    # I

    .prologue
    const-wide/16 v10, 0x258

    const/16 v8, 0xd

    const/4 v5, 0x4

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 204
    if-eq p1, v5, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->curIndex:I

    if-ltz v3, :cond_0

    .line 211
    iget-boolean v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->inAnimating:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->closeAnimating:Z

    if-nez v3, :cond_0

    .line 215
    iget-object v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->appViews:Ljava/util/ArrayList;

    iget v4, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->curIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->curImageView:Landroid/widget/ImageView;

    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, "closeAnim":Landroid/view/animation/TranslateAnimation;
    if-ne p1, v5, :cond_2

    .line 218
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "closeAnim":Landroid/view/animation/TranslateAnimation;
    iget v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->screenHeight:I

    int-to-float v3, v3

    invoke-direct {v1, v6, v6, v6, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 222
    .restart local v1    # "closeAnim":Landroid/view/animation/TranslateAnimation;
    :goto_1
    invoke-virtual {v1, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 223
    new-instance v3, Lcom/zte/zgesture/setting/CloseAppDemoActivity$3;

    invoke-direct {v3, p0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity$3;-><init>(Lcom/zte/zgesture/setting/CloseAppDemoActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 240
    iget-object v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->curImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 242
    iget v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->curIndex:I

    if-nez v3, :cond_3

    .line 243
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->finish()V

    goto :goto_0

    .line 220
    :cond_2
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "closeAnim":Landroid/view/animation/TranslateAnimation;
    iget v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->screenHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v1, v6, v6, v6, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v1    # "closeAnim":Landroid/view/animation/TranslateAnimation;
    goto :goto_1

    .line 245
    :cond_3
    iget-object v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconRes:[I

    iget v4, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->curIndex:I

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 246
    iget v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->curIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->curIndex:I

    .line 247
    iget-object v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->backGround:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->curImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 248
    iget-object v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->appViews:Ljava/util/ArrayList;

    iget v4, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->curIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->inImageView:Landroid/widget/ImageView;

    .line 249
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 250
    .local v0, "appParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 251
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 252
    iget-object v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->backGround:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->inImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    const/4 v2, 0x0

    .line 255
    .local v2, "inAnim":Landroid/view/animation/TranslateAnimation;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .end local v2    # "inAnim":Landroid/view/animation/TranslateAnimation;
    iget v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->screenWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v2, v3, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 256
    .restart local v2    # "inAnim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v2, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 257
    new-instance v3, Lcom/zte/zgesture/setting/CloseAppDemoActivity$4;

    invoke-direct {v3, p0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity$4;-><init>(Lcom/zte/zgesture/setting/CloseAppDemoActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 278
    iget-object v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->inImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method private generateIconList()Ljava/util/ArrayList;
    .locals 4
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
    .line 319
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v2, "iconList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconRes:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 322
    iget-object v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconRes:[I

    aget v3, v3, v0

    if-eqz v3, :cond_0

    .line 323
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 324
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconRes:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 325
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    .end local v1    # "icon":Landroid/widget/ImageView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    :cond_1
    return-object v2
.end method

.method private refeshTip()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    invoke-direct {p0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->generateIconList()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->curIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/zte/zgesture/ui/IconListView;->setIconList(Ljava/util/ArrayList;I)V

    .line 86
    :cond_0
    return-void
.end method

.method private removeTip()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->removeTipView()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->isShowingTips:Z

    .line 80
    return-void
.end method

.method private removeTipView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 306
    iget-object v1, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconsBackGround:Landroid/widget/AbsoluteLayout;

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconsBackGround:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1}, Landroid/widget/AbsoluteLayout;->removeAllViews()V

    .line 308
    iput-object v2, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconsBackGround:Landroid/widget/AbsoluteLayout;

    if-eqz v1, :cond_1

    .line 312
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 313
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconsBackGround:Landroid/widget/AbsoluteLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 314
    iput-object v2, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconsBackGround:Landroid/widget/AbsoluteLayout;

    .line 316
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_1
    return-void
.end method

.method public static setStatusListener(Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;)V
    .locals 0
    .param p0, "demoStatusListener"    # Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    .prologue
    .line 61
    if-eqz p0, :cond_0

    .line 62
    sput-object p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    .line 64
    :cond_0
    return-void
.end method

.method private switchTip(I)V
    .locals 3
    .param p1, "dir"    # I

    .prologue
    .line 67
    const-string v0, "AppListSlideRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchTip dir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-boolean v0, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->isShowingTips:Z

    if-nez v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->addTipView()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->isShowingTips:Z

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    invoke-direct {p0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->generateIconList()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->curIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/zte/zgesture/ui/IconListView;->setIconList(Ljava/util/ArrayList;I)V

    .line 75
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const-string v10, "window"

    invoke-virtual {p0, v10}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 111
    .local v9, "winManager":Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v10

    iput v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->screenHeight:I

    .line 112
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v10

    iput v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->screenWidth:I

    .line 114
    iget-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconRes:[I

    const/4 v11, 0x0

    const v12, 0x7f020267

    aput v12, v10, v11

    .line 115
    iget-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconRes:[I

    const/4 v11, 0x1

    const v12, 0x7f020268

    aput v12, v10, v11

    .line 116
    iget-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->iconRes:[I

    const/4 v11, 0x2

    const v12, 0x7f020269

    aput v12, v10, v11

    .line 118
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 119
    .local v0, "app1":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020204

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 120
    .local v5, "bmp1":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 121
    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 122
    iget-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->appViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 126
    .local v1, "app2":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020205

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 127
    .local v6, "bmp2":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 129
    iget-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->appViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 133
    .local v2, "app3":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020206

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 134
    .local v7, "bmp3":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 136
    iget-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->appViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->appViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->curIndex:I

    .line 140
    iget-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->appViews:Ljava/util/ArrayList;

    iget v11, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->curIndex:I

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->curImageView:Landroid/widget/ImageView;

    .line 142
    new-instance v10, Lcom/zte/zgesture/setting/CloseAppDemoActivity$2;

    invoke-direct {v10, p0, p0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity$2;-><init>(Lcom/zte/zgesture/setting/CloseAppDemoActivity;Landroid/content/Context;)V

    iput-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->backGround:Landroid/widget/RelativeLayout;

    .line 149
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->tipText:Landroid/widget/TextView;

    .line 150
    iget-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->tipText:Landroid/widget/TextView;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->tipText:Landroid/widget/TextView;

    const/16 v11, 0xbf

    const/16 v12, 0x18

    const/16 v13, 0x18

    const/16 v14, 0x18

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 152
    iget-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->tipText:Landroid/widget/TextView;

    const/16 v11, 0xa

    const/16 v12, 0xa

    const/16 v13, 0xa

    const/16 v14, 0xa

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 153
    iget-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->tipText:Landroid/widget/TextView;

    const/high16 v11, 0x41900000    # 18.0f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 154
    iget-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->tipText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09007b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 157
    .local v4, "appParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xd

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 158
    const/16 v10, 0xd

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    iget-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->backGround:Landroid/widget/RelativeLayout;

    iget-object v11, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->curImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v11, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 162
    .local v8, "tipParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xc

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 163
    const/16 v10, 0xe

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 164
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->screenHeight:I

    div-int/lit8 v13, v13, 0xa

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 165
    iget-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->backGround:Landroid/widget/RelativeLayout;

    iget-object v11, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->tipText:Landroid/widget/TextView;

    invoke-virtual {v10, v11, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->backGround:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v10}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->setContentView(Landroid/view/View;)V

    .line 169
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    .local v3, "appFilter":Landroid/content/IntentFilter;
    const-string v10, "AppListSlideRecognizer"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->AppListSlideRecognizerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10, v3}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    sget-object v10, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    if-eqz v10, :cond_0

    .line 174
    sget-object v10, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    invoke-interface {v10}, Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;->onStartDemo()V

    .line 176
    :cond_0
    invoke-static {}, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->isExistInstance()Z

    move-result v10

    iput-boolean v10, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->mControlExist:Z

    .line 177
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;

    .line 178
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->SetDemoStatus(Z)V

    .line 179
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 184
    invoke-direct {p0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->removeTipView()V

    .line 185
    invoke-direct {p0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->cleanBitmap()V

    .line 186
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->AppListSlideRecognizerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    sget-object v0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->mDemoStatusListener:Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;

    invoke-interface {v0}, Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;->onStopDemo()V

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->SetDemoStatus(Z)V

    .line 192
    iget-boolean v0, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->mControlExist:Z

    if-nez v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->destroyAction()V

    .line 195
    :cond_1
    return-void
.end method
