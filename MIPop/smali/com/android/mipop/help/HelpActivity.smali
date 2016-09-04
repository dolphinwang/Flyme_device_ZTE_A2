.class public Lcom/android/mipop/help/HelpActivity;
.super Lcom/zte/mifavor/widget/ActivityZTE;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpActivity"

.field private static helpItem:I


# instance fields
.field private bitmap1:Landroid/graphics/Bitmap;

.field private bitmap2:Landroid/graphics/Bitmap;

.field private bitmap3:Landroid/graphics/Bitmap;

.field private detector:Landroid/view/GestureDetector;

.field private flipper:Landroid/widget/ViewFlipper;

.field private help1:Landroid/widget/TextView;

.field private help1Title:Landroid/widget/TextView;

.field private imageView:[Landroid/widget/ImageView;

.field private index:I

.field private resid:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x3

    sput v0, Lcom/android/mipop/help/HelpActivity;->helpItem:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 32
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ActivityZTE;-><init>()V

    .line 40
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mipop/help/HelpActivity;->imageView:[Landroid/widget/ImageView;

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mipop/help/HelpActivity;->index:I

    .line 50
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/mipop/help/HelpActivity;->resid:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0206dd
        0x7f0206de
        0x7f0206df
    .end array-data
.end method

.method public static readBitMap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x1

    .line 105
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 106
    .local v1, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 107
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 108
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 111
    .local v0, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private updateIndicatorColor()V
    .locals 4

    .prologue
    .line 138
    const-string v1, "color_sb"

    .line 139
    .local v1, "ACTIONBAR_BG_COLOR_KEY":Ljava/lang/String;
    const v0, -0x40babd

    .line 141
    .local v0, "ACTIONBAR_BG_COLOR_DEFAULT_VALUE":I
    invoke-virtual {p0}, Lcom/android/mipop/help/HelpActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 144
    .local v2, "color":I
    invoke-virtual {p0, v2}, Lcom/android/mipop/help/HelpActivity;->setIndicatorColor(I)V

    .line 145
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/mipop/help/HelpActivity;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 150
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/mipop/help/HelpActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 61
    .local v0, "ab":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 62
    const/16 v5, 0xd

    const/16 v6, 0xf

    invoke-virtual {v0, v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/android/mipop/help/HelpActivity;->updateIndicatorColor()V

    .line 70
    const v5, 0x7f030069

    invoke-virtual {p0, v5}, Lcom/android/mipop/help/HelpActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/android/mipop/help/HelpActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 77
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f03006b

    invoke-virtual {v1, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 78
    .local v2, "v1":Landroid/view/View;
    iget-object v6, p0, Lcom/android/mipop/help/HelpActivity;->imageView:[Landroid/widget/ImageView;

    const v5, 0x7f0600f6

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v8

    .line 79
    const v5, 0x7f0600f7

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/mipop/help/HelpActivity;->help1Title:Landroid/widget/TextView;

    .line 80
    const v5, 0x7f0600f5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/mipop/help/HelpActivity;->help1:Landroid/widget/TextView;

    .line 82
    const v5, 0x7f03006d

    invoke-virtual {v1, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 83
    .local v3, "v2":Landroid/view/View;
    iget-object v6, p0, Lcom/android/mipop/help/HelpActivity;->imageView:[Landroid/widget/ImageView;

    const/4 v7, 0x1

    const v5, 0x7f0600f8

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v7

    .line 85
    const v5, 0x7f03006f

    invoke-virtual {v1, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 86
    .local v4, "v3":Landroid/view/View;
    iget-object v6, p0, Lcom/android/mipop/help/HelpActivity;->imageView:[Landroid/widget/ImageView;

    const/4 v7, 0x2

    const v5, 0x7f0600f9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v7

    .line 88
    const v5, 0x7f0600e2

    invoke-virtual {p0, v5}, Lcom/android/mipop/help/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ViewFlipper;

    iput-object v5, p0, Lcom/android/mipop/help/HelpActivity;->flipper:Landroid/widget/ViewFlipper;

    .line 90
    iget-object v5, p0, Lcom/android/mipop/help/HelpActivity;->resid:[I

    aget v5, v5, v8

    invoke-static {p0, v5}, Lcom/android/mipop/help/HelpActivity;->readBitMap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mipop/help/HelpActivity;->bitmap1:Landroid/graphics/Bitmap;

    .line 91
    iget-object v5, p0, Lcom/android/mipop/help/HelpActivity;->imageView:[Landroid/widget/ImageView;

    aget-object v5, v5, v8

    iget-object v6, p0, Lcom/android/mipop/help/HelpActivity;->bitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 92
    const-string v5, "true"

    const-string v6, "ro.build.PTP_Feature"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 93
    iget-object v5, p0, Lcom/android/mipop/help/HelpActivity;->help1Title:Landroid/widget/TextView;

    const v6, 0x7f090586

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 94
    iget-object v5, p0, Lcom/android/mipop/help/HelpActivity;->help1:Landroid/widget/TextView;

    const v6, 0x7f090587

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 97
    :cond_1
    iget-object v5, p0, Lcom/android/mipop/help/HelpActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 98
    iget-object v5, p0, Lcom/android/mipop/help/HelpActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5, v3}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 99
    iget-object v5, p0, Lcom/android/mipop/help/HelpActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5, v4}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 101
    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/android/mipop/help/HelpActivity;->detector:Landroid/view/GestureDetector;

    .line 102
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onDestroy()V

    .line 124
    iget-object v0, p0, Lcom/android/mipop/help/HelpActivity;->bitmap1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/help/HelpActivity;->bitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/mipop/help/HelpActivity;->bitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/help/HelpActivity;->bitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mipop/help/HelpActivity;->bitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/mipop/help/HelpActivity;->bitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/mipop/help/HelpActivity;->bitmap3:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mipop/help/HelpActivity;->bitmap3:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/android/mipop/help/HelpActivity;->bitmap3:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    :cond_2
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v0, 0x1

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x42a00000    # 80.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/android/mipop/help/HelpActivity;->flipper:Landroid/widget/ViewFlipper;

    const v2, 0x7f04000d

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 171
    iget-object v1, p0, Lcom/android/mipop/help/HelpActivity;->flipper:Landroid/widget/ViewFlipper;

    const v2, 0x7f04000e

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 173
    iget v1, p0, Lcom/android/mipop/help/HelpActivity;->index:I

    sget v2, Lcom/android/mipop/help/HelpActivity;->helpItem:I

    if-ge v1, v2, :cond_0

    .line 174
    iget v1, p0, Lcom/android/mipop/help/HelpActivity;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/mipop/help/HelpActivity;->index:I

    .line 175
    iget-object v1, p0, Lcom/android/mipop/help/HelpActivity;->resid:[I

    iget v2, p0, Lcom/android/mipop/help/HelpActivity;->index:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-static {p0, v1}, Lcom/android/mipop/help/HelpActivity;->readBitMap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mipop/help/HelpActivity;->bitmap2:Landroid/graphics/Bitmap;

    .line 176
    iget-object v1, p0, Lcom/android/mipop/help/HelpActivity;->imageView:[Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/mipop/help/HelpActivity;->index:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/mipop/help/HelpActivity;->bitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 177
    iget-object v1, p0, Lcom/android/mipop/help/HelpActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showNext()V

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, -0x3d600000    # -80.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/android/mipop/help/HelpActivity;->flipper:Landroid/widget/ViewFlipper;

    const v2, 0x7f04000f

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 183
    iget-object v1, p0, Lcom/android/mipop/help/HelpActivity;->flipper:Landroid/widget/ViewFlipper;

    const v2, 0x7f040010

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 185
    iget v1, p0, Lcom/android/mipop/help/HelpActivity;->index:I

    if-le v1, v0, :cond_0

    .line 186
    iget v1, p0, Lcom/android/mipop/help/HelpActivity;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/mipop/help/HelpActivity;->index:I

    .line 187
    iget-object v1, p0, Lcom/android/mipop/help/HelpActivity;->resid:[I

    iget v2, p0, Lcom/android/mipop/help/HelpActivity;->index:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-static {p0, v1}, Lcom/android/mipop/help/HelpActivity;->readBitMap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mipop/help/HelpActivity;->bitmap3:Landroid/graphics/Bitmap;

    .line 188
    iget-object v1, p0, Lcom/android/mipop/help/HelpActivity;->imageView:[Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/mipop/help/HelpActivity;->index:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/mipop/help/HelpActivity;->bitmap3:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 189
    iget-object v1, p0, Lcom/android/mipop/help/HelpActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showPrevious()V

    goto :goto_0

    .line 193
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 199
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/mipop/help/HelpActivity;->finish()V

    .line 156
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onResume()V

    .line 118
    invoke-direct {p0}, Lcom/android/mipop/help/HelpActivity;->updateIndicatorColor()V

    .line 119
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 210
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/mipop/help/HelpActivity;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
