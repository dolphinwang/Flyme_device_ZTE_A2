.class public Lcom/android/mipop/ChangeKeyActivity;
.super Lcom/zte/mifavor/widget/ActivityZTE;
.source "ChangeKeyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mipop/ChangeKeyActivity$ListItem;,
        Lcom/android/mipop/ChangeKeyActivity$SettingListAdapter;
    }
.end annotation


# static fields
.field private static final CHANGE_KEY_ALPHA:I = 0xe6

.field private static final DBG:Z = true

.field private static final DOWN_DIALOG:I = 0x5

.field private static final DOWN_KEY:Ljava/lang/String; = "DOWN_KEY"

.field private static final LEFT_DIALOG:I = 0x2

.field private static final LEFT_KEY:Ljava/lang/String; = "LEFT_KEY"

.field private static final MID_DIALOG:I = 0x3

.field private static final MID_KEY:Ljava/lang/String; = "MID_KEY"

.field private static final RIGHT_DIALOG:I = 0x4

.field private static final RIGHT_KEY:Ljava/lang/String; = "RIGHT_KEY"

.field private static final TAG:Ljava/lang/String; = "Suhao.MIPopActivity"

.field private static final UNCHANGE_KEY_ALPHA:I = 0x42

.field private static final UP_DIALOG:I = 0x1

.field private static final UP_KEY:Ljava/lang/String; = "UP_KEY"


# instance fields
.field private downImageView:Landroid/widget/ImageView;

.field private downImageViewCycle:Landroid/widget/ImageView;

.field imageviewOnClickListener:Landroid/view/View$OnClickListener;

.field private leftImageView:Landroid/widget/ImageView;

.field private leftImageViewCycle:Landroid/widget/ImageView;

.field mContext:Landroid/content/Context;

.field private midImageView:Landroid/widget/ImageView;

.field private midImageViewCycle:Landroid/widget/ImageView;

.field private rightImageView:Landroid/widget/ImageView;

.field private rightImageViewCycle:Landroid/widget/ImageView;

.field private setKey:Ljava/lang/String;

.field private upImageView:Landroid/widget/ImageView;

.field private upImageViewCycle:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ActivityZTE;-><init>()V

    .line 335
    new-instance v0, Lcom/android/mipop/ChangeKeyActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mipop/ChangeKeyActivity$2;-><init>(Lcom/android/mipop/ChangeKeyActivity;)V

    iput-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->imageviewOnClickListener:Landroid/view/View$OnClickListener;

    .line 538
    return-void
.end method

.method static synthetic access$000(Lcom/android/mipop/ChangeKeyActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/ChangeKeyActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->setKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mipop/ChangeKeyActivity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/ChangeKeyActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/mipop/ChangeKeyActivity;->updateCurKey(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mipop/ChangeKeyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/ChangeKeyActivity;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/mipop/ChangeKeyActivity;->midKeyAlpha()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mipop/ChangeKeyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/ChangeKeyActivity;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/mipop/ChangeKeyActivity;->rightKeyAlpha()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mipop/ChangeKeyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/ChangeKeyActivity;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/mipop/ChangeKeyActivity;->downKeyAlpha()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/ChangeKeyActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->upImageViewCycle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/ChangeKeyActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->leftImageViewCycle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/ChangeKeyActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->midImageViewCycle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/ChangeKeyActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->rightImageViewCycle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/ChangeKeyActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->downImageViewCycle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mipop/ChangeKeyActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/ChangeKeyActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/mipop/ChangeKeyActivity;->update(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mipop/ChangeKeyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/ChangeKeyActivity;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/mipop/ChangeKeyActivity;->upKeyAlpha()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mipop/ChangeKeyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/ChangeKeyActivity;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/mipop/ChangeKeyActivity;->leftKeyAlpha()V

    return-void
.end method

.method private downKeyAlpha()V
    .locals 2

    .prologue
    const/16 v1, 0x42

    .line 427
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->upImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 428
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->leftImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 429
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->midImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 430
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->rightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 431
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->downImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xe6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 432
    return-void
.end method

.method private initKey()V
    .locals 3

    .prologue
    const v2, 0x7f0206fb

    .line 162
    const v0, 0x7f0600bd

    invoke-virtual {p0, v0}, Lcom/android/mipop/ChangeKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->upImageView:Landroid/widget/ImageView;

    .line 163
    const v0, 0x7f0600c0

    invoke-virtual {p0, v0}, Lcom/android/mipop/ChangeKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->leftImageView:Landroid/widget/ImageView;

    .line 164
    const v0, 0x7f0600c3

    invoke-virtual {p0, v0}, Lcom/android/mipop/ChangeKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->midImageView:Landroid/widget/ImageView;

    .line 165
    const v0, 0x7f0600c6

    invoke-virtual {p0, v0}, Lcom/android/mipop/ChangeKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->rightImageView:Landroid/widget/ImageView;

    .line 166
    const v0, 0x7f0600c9

    invoke-virtual {p0, v0}, Lcom/android/mipop/ChangeKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->downImageView:Landroid/widget/ImageView;

    .line 168
    const v0, 0x7f0600bc

    invoke-virtual {p0, v0}, Lcom/android/mipop/ChangeKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->upImageViewCycle:Landroid/widget/ImageView;

    .line 169
    const v0, 0x7f0600bf

    invoke-virtual {p0, v0}, Lcom/android/mipop/ChangeKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->leftImageViewCycle:Landroid/widget/ImageView;

    .line 170
    const v0, 0x7f0600c2

    invoke-virtual {p0, v0}, Lcom/android/mipop/ChangeKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->midImageViewCycle:Landroid/widget/ImageView;

    .line 171
    const v0, 0x7f0600c5

    invoke-virtual {p0, v0}, Lcom/android/mipop/ChangeKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->rightImageViewCycle:Landroid/widget/ImageView;

    .line 172
    const v0, 0x7f0600c8

    invoke-virtual {p0, v0}, Lcom/android/mipop/ChangeKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->downImageViewCycle:Landroid/widget/ImageView;

    .line 174
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->upImageViewCycle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 175
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->leftImageViewCycle:Landroid/widget/ImageView;

    const v1, 0x7f0206fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 176
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->midImageViewCycle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 177
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->rightImageViewCycle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 178
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->downImageViewCycle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 180
    invoke-direct {p0}, Lcom/android/mipop/ChangeKeyActivity;->updateKey()V

    .line 181
    invoke-direct {p0}, Lcom/android/mipop/ChangeKeyActivity;->leftKeyAlpha()V

    .line 183
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->upImageViewCycle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mipop/ChangeKeyActivity;->imageviewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->leftImageViewCycle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mipop/ChangeKeyActivity;->imageviewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->midImageViewCycle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mipop/ChangeKeyActivity;->imageviewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->rightImageViewCycle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mipop/ChangeKeyActivity;->imageviewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->downImageViewCycle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mipop/ChangeKeyActivity;->imageviewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-void
.end method

.method private leftKeyAlpha()V
    .locals 3

    .prologue
    const/16 v2, 0x42

    .line 403
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->upImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 404
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->leftImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xe6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 405
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->midImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 406
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->rightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 407
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->downImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 408
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string v0, "Suhao.MIPopActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method private midKeyAlpha()V
    .locals 3

    .prologue
    const/16 v2, 0x42

    .line 411
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->upImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 412
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->leftImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 413
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->midImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xe6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 414
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->rightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 415
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->downImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 416
    return-void
.end method

.method private rightKeyAlpha()V
    .locals 3

    .prologue
    const/16 v2, 0x42

    .line 419
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->upImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 420
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->leftImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 421
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->midImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 422
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->rightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xe6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 423
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->downImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 424
    return-void
.end method

.method private upKeyAlpha()V
    .locals 3

    .prologue
    const/16 v2, 0x42

    .line 395
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->upImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xe6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 396
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->leftImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 397
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->midImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 398
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->rightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 399
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->downImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 400
    return-void
.end method

.method private update(Ljava/lang/String;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 308
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "indices_item":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v3, "listData":Ljava/util/List;, "Ljava/util/List<Lcom/android/mipop/ChangeKeyActivity$ListItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v1

    if-ge v0, v6, :cond_0

    .line 311
    new-instance v4, Lcom/android/mipop/ChangeKeyActivity$ListItem;

    invoke-direct {v4, p0}, Lcom/android/mipop/ChangeKeyActivity$ListItem;-><init>(Lcom/android/mipop/ChangeKeyActivity;)V

    .line 312
    .local v4, "listItem":Lcom/android/mipop/ChangeKeyActivity$ListItem;
    aget-object v6, v1, v0

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/mipop/ChangeKeyActivity$ListItem;->title:Ljava/lang/String;

    .line 313
    sget-object v6, Lcom/android/mipop/widget/Until;->listIconId:[I

    aget v6, v6, v0

    iput v6, v4, Lcom/android/mipop/ChangeKeyActivity$ListItem;->iv:I

    .line 314
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v4    # "listItem":Lcom/android/mipop/ChangeKeyActivity$ListItem;
    :cond_0
    iput-object p1, p0, Lcom/android/mipop/ChangeKeyActivity;->setKey:Ljava/lang/String;

    .line 318
    new-instance v2, Lcom/android/mipop/ChangeKeyActivity$SettingListAdapter;

    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mipop/ChangeKeyActivity;->setKey:Ljava/lang/String;

    invoke-direct {v2, p0, v6, v3, v7}, Lcom/android/mipop/ChangeKeyActivity$SettingListAdapter;-><init>(Lcom/android/mipop/ChangeKeyActivity;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 319
    .local v2, "listAdapter":Lcom/android/mipop/ChangeKeyActivity$SettingListAdapter;
    const v6, 0x7f0600ca

    invoke-virtual {p0, v6}, Lcom/android/mipop/ChangeKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 320
    .local v5, "listView":Landroid/widget/ListView;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setLayoutDirection(I)V

    .line 321
    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 322
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 323
    new-instance v6, Lcom/android/mipop/ChangeKeyActivity$1;

    invoke-direct {v6, p0, v2}, Lcom/android/mipop/ChangeKeyActivity$1;-><init>(Lcom/android/mipop/ChangeKeyActivity;Lcom/android/mipop/ChangeKeyActivity$SettingListAdapter;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 333
    return-void
.end method

.method private updateCurKey(Ljava/lang/String;I)V
    .locals 9
    .param p1, "curKey"    # Ljava/lang/String;
    .param p2, "curKeyValue"    # I

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "LEFT_KEY"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 208
    .local v2, "leftKey":I
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "UP_KEY"

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 209
    .local v5, "upKey":I
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "MID_KEY"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 210
    .local v3, "midKey":I
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "RIGHT_KEY"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 211
    .local v4, "rightKey":I
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "DOWN_KEY"

    const/4 v8, 0x4

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 212
    .local v1, "downKey":I
    const-string v6, "Suhao.MIPopActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lxg curKeyValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",curKey = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v6, "LEFT_KEY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 215
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, p1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 216
    .local v0, "curKeyBeforeValue":I
    if-ne p2, v5, :cond_2

    .line 217
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "UP_KEY"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 218
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->upImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 229
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->leftImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, p2

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 231
    invoke-direct {p0}, Lcom/android/mipop/ChangeKeyActivity;->leftKeyAlpha()V

    .line 305
    .end local v0    # "curKeyBeforeValue":I
    :cond_1
    :goto_1
    return-void

    .line 219
    .restart local v0    # "curKeyBeforeValue":I
    :cond_2
    if-ne p2, v3, :cond_3

    .line 220
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "MID_KEY"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->midImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 222
    :cond_3
    if-ne p2, v4, :cond_4

    .line 223
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "RIGHT_KEY"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 224
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->rightImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 225
    :cond_4
    if-ne p2, v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "DOWN_KEY"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 227
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->downImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 232
    .end local v0    # "curKeyBeforeValue":I
    :cond_5
    const-string v6, "UP_KEY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 233
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v6, p1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 234
    .restart local v0    # "curKeyBeforeValue":I
    if-ne p2, v2, :cond_7

    .line 235
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "LEFT_KEY"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 236
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->leftImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 247
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 248
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->upImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, p2

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 249
    invoke-direct {p0}, Lcom/android/mipop/ChangeKeyActivity;->upKeyAlpha()V

    goto/16 :goto_1

    .line 237
    :cond_7
    if-ne p2, v3, :cond_8

    .line 238
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "MID_KEY"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 239
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->midImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 240
    :cond_8
    if-ne p2, v4, :cond_9

    .line 241
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "RIGHT_KEY"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->rightImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 243
    :cond_9
    if-ne p2, v1, :cond_6

    .line 244
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "DOWN_KEY"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 245
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->downImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 250
    .end local v0    # "curKeyBeforeValue":I
    :cond_a
    const-string v6, "MID_KEY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 251
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, p1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 252
    .restart local v0    # "curKeyBeforeValue":I
    if-ne p2, v5, :cond_c

    .line 253
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "UP_KEY"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->upImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 265
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 266
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->midImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, p2

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 267
    invoke-direct {p0}, Lcom/android/mipop/ChangeKeyActivity;->midKeyAlpha()V

    goto/16 :goto_1

    .line 255
    :cond_c
    if-ne p2, v2, :cond_d

    .line 256
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "LEFT_KEY"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->leftImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 258
    :cond_d
    if-ne p2, v4, :cond_e

    .line 259
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "RIGHT_KEY"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->rightImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 261
    :cond_e
    if-ne p2, v1, :cond_b

    .line 262
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "DOWN_KEY"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->downImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 268
    .end local v0    # "curKeyBeforeValue":I
    :cond_f
    const-string v6, "RIGHT_KEY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 269
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, p1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 270
    .restart local v0    # "curKeyBeforeValue":I
    if-ne p2, v5, :cond_11

    .line 271
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "UP_KEY"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 272
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->upImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 283
    :cond_10
    :goto_4
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->rightImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, p2

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 285
    invoke-direct {p0}, Lcom/android/mipop/ChangeKeyActivity;->rightKeyAlpha()V

    goto/16 :goto_1

    .line 273
    :cond_11
    if-ne p2, v3, :cond_12

    .line 274
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "MID_KEY"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 275
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->midImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 276
    :cond_12
    if-ne p2, v2, :cond_13

    .line 277
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "LEFT_KEY"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 278
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->leftImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 279
    :cond_13
    if-ne p2, v1, :cond_10

    .line 280
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "DOWN_KEY"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 281
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->downImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 286
    .end local v0    # "curKeyBeforeValue":I
    :cond_14
    const-string v6, "DOWN_KEY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v6, p1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 288
    .restart local v0    # "curKeyBeforeValue":I
    if-ne p2, v5, :cond_16

    .line 289
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "UP_KEY"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->upImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 301
    :cond_15
    :goto_5
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 302
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->downImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, p2

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 303
    invoke-direct {p0}, Lcom/android/mipop/ChangeKeyActivity;->downKeyAlpha()V

    goto/16 :goto_1

    .line 291
    :cond_16
    if-ne p2, v3, :cond_17

    .line 292
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "MID_KEY"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 293
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->midImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_5

    .line 294
    :cond_17
    if-ne p2, v4, :cond_18

    .line 295
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "RIGHT_KEY"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 296
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->rightImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_5

    .line 297
    :cond_18
    if-ne p2, v2, :cond_15

    .line 298
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "LEFT_KEY"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 299
    iget-object v6, p0, Lcom/android/mipop/ChangeKeyActivity;->leftImageView:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_5
.end method

.method private updateIndicatorColor()V
    .locals 4

    .prologue
    .line 453
    const-string v1, "color_sb"

    .line 454
    .local v1, "ACTIONBAR_BG_COLOR_KEY":Ljava/lang/String;
    const v0, -0x40babd

    .line 456
    .local v0, "ACTIONBAR_BG_COLOR_DEFAULT_VALUE":I
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 458
    .local v2, "color":I
    invoke-virtual {p0, v2}, Lcom/android/mipop/ChangeKeyActivity;->setIndicatorColor(I)V

    .line 459
    return-void
.end method

.method private updateKey()V
    .locals 8

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "UP_KEY"

    const/4 v7, 0x3

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 192
    .local v4, "upKey":I
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "LEFT_KEY"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 193
    .local v1, "leftKey":I
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "MID_KEY"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 194
    .local v2, "midKey":I
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "RIGHT_KEY"

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 195
    .local v3, "rightKey":I
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "DOWN_KEY"

    const/4 v7, 0x4

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 196
    .local v0, "downKey":I
    const-string v5, "Suhao.MIPopActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lxg upKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",leftKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",midKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",rightKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",downKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v5, p0, Lcom/android/mipop/ChangeKeyActivity;->upImageView:Landroid/widget/ImageView;

    sget-object v6, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 200
    iget-object v5, p0, Lcom/android/mipop/ChangeKeyActivity;->leftImageView:Landroid/widget/ImageView;

    sget-object v6, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 201
    iget-object v5, p0, Lcom/android/mipop/ChangeKeyActivity;->midImageView:Landroid/widget/ImageView;

    sget-object v6, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 202
    iget-object v5, p0, Lcom/android/mipop/ChangeKeyActivity;->rightImageView:Landroid/widget/ImageView;

    sget-object v6, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 203
    iget-object v5, p0, Lcom/android/mipop/ChangeKeyActivity;->downImageView:Landroid/widget/ImageView;

    sget-object v6, Lcom/android/mipop/widget/Until;->iconId:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 204
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    const-string v5, "onCreate()"

    invoke-direct {p0, v5}, Lcom/android/mipop/ChangeKeyActivity;->log(Ljava/lang/String;)V

    .line 132
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onCreate(Landroid/os/Bundle;)V

    .line 133
    iput-object p0, p0, Lcom/android/mipop/ChangeKeyActivity;->mContext:Landroid/content/Context;

    .line 135
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 136
    .local v2, "ab":Landroid/app/ActionBar;
    if-eqz v2, :cond_0

    .line 137
    const/16 v5, 0xd

    const/16 v6, 0xf

    invoke-virtual {v2, v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 144
    :cond_0
    const-string v1, "color_sb"

    .line 145
    .local v1, "ACTIONBAR_BG_COLOR_KEY":Ljava/lang/String;
    const v0, -0x40babd

    .line 146
    .local v0, "ACTIONBAR_BG_COLOR_DEFAULT_VALUE":I
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 148
    .local v3, "color":I
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 151
    const v5, 0x7f030065

    invoke-virtual {p0, v5}, Lcom/android/mipop/ChangeKeyActivity;->setContentView(I)V

    .line 152
    const v5, 0x7f0600ba

    invoke-virtual {p0, v5}, Lcom/android/mipop/ChangeKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 153
    .local v4, "keyLayout":Landroid/widget/RelativeLayout;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    .line 155
    invoke-direct {p0}, Lcom/android/mipop/ChangeKeyActivity;->initKey()V

    .line 156
    const-string v5, "LEFT_KEY"

    invoke-direct {p0, v5}, Lcom/android/mipop/ChangeKeyActivity;->update(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 445
    const-string v0, "Suhao.Memory"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/ChangeKeyActivity;->mContext:Landroid/content/Context;

    .line 447
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onDestroy()V

    .line 448
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 462
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->finish()V

    .line 464
    const/4 v0, 0x1

    .line 466
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 471
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onResume()V

    .line 472
    const-string v3, "onResume()"

    invoke-direct {p0, v3}, Lcom/android/mipop/ChangeKeyActivity;->log(Ljava/lang/String;)V

    .line 473
    iput-object p0, p0, Lcom/android/mipop/ChangeKeyActivity;->mContext:Landroid/content/Context;

    .line 476
    const-string v1, "color_sb"

    .line 477
    .local v1, "ACTIONBAR_BG_COLOR_KEY":Ljava/lang/String;
    const v0, -0x40babd

    .line 478
    .local v0, "ACTIONBAR_BG_COLOR_DEFAULT_VALUE":I
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 480
    .local v2, "color":I
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 481
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 483
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 435
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onStart()V

    .line 436
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/android/mipop/ChangeKeyActivity;->finish()V

    .line 440
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onStop()V

    .line 441
    return-void
.end method
