.class public Lcom/zte/zgesture/ui/AnimActivity;
.super Landroid/app/Activity;
.source "AnimActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/zgesture/ui/AnimActivity$2;,
        Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;,
        Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;,
        Lcom/zte/zgesture/ui/AnimActivity$DrawType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BlackScreenGestureControl"

.field private static mAnimationListerner:Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;


# instance fields
.field private mFrameAnimation:Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;

.field private mImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 140
    return-void
.end method

.method private getPlaySequence(Lcom/zte/zgesture/ui/AnimActivity$DrawType;)[I
    .locals 3
    .param p1, "drawType"    # Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    .prologue
    const/16 v2, 0x17

    .line 114
    sget-object v0, Lcom/zte/zgesture/ui/AnimActivity$2;->$SwitchMap$com$zte$zgesture$ui$AnimActivity$DrawType:[I

    invoke-virtual {p1}, Lcom/zte/zgesture/ui/AnimActivity$DrawType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 136
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 116
    :pswitch_0
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    goto :goto_0

    .line 121
    :pswitch_1
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    goto :goto_0

    .line 126
    :pswitch_2
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    goto :goto_0

    .line 131
    :pswitch_3
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 116
    :array_0
    .array-data 4
        0x7f020213
        0x7f020214
        0x7f020215
        0x7f020216
        0x7f020217
        0x7f020218
        0x7f020219
        0x7f02021a
        0x7f02021b
        0x7f02021c
        0x7f02021d
        0x7f02021e
        0x7f02021f
        0x7f020220
        0x7f020221
        0x7f020222
        0x7f020223
        0x7f020224
        0x7f020225
        0x7f020226
        0x7f020227
        0x7f020228
        0x7f020229
    .end array-data

    .line 121
    :array_1
    .array-data 4
        0x7f02028b
        0x7f02028c
        0x7f02028d
        0x7f02028e
        0x7f02028f
        0x7f020290
        0x7f020291
        0x7f020292
        0x7f020293
        0x7f020294
        0x7f020295
        0x7f020296
        0x7f020297
        0x7f020298
        0x7f020299
        0x7f02029a
        0x7f02029b
        0x7f02029c
        0x7f02029d
        0x7f02029e
        0x7f02029f
        0x7f0202a0
        0x7f0202a1
    .end array-data

    .line 126
    :array_2
    .array-data 4
        0x7f020270
        0x7f020271
        0x7f020272
        0x7f020273
        0x7f020274
        0x7f020275
        0x7f020276
        0x7f020277
        0x7f020278
        0x7f020279
        0x7f02027a
        0x7f02027b
        0x7f02027c
        0x7f02027d
        0x7f02027e
        0x7f02027f
        0x7f020280
        0x7f020281
        0x7f020282
        0x7f020283
        0x7f020284
        0x7f020285
        0x7f020286
    .end array-data

    .line 131
    :array_3
    .array-data 4
        0x7f0202b7
        0x7f0202b8
        0x7f0202b9
        0x7f0202ba
        0x7f0202bb
        0x7f0202bc
        0x7f0202bd
        0x7f0202be
        0x7f0202bf
        0x7f0202c0
        0x7f0202c1
        0x7f0202c2
        0x7f0202c3
        0x7f0202c4
        0x7f0202c5
        0x7f0202c6
        0x7f0202c7
        0x7f0202c8
        0x7f0202c9
        0x7f0202ca
        0x7f0202cb
        0x7f0202cc
        0x7f0202cd
    .end array-data
.end method

.method private loadShape(Lcom/zte/zgesture/ui/AnimActivity$DrawType;)V
    .locals 4
    .param p1, "drawType"    # Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    .prologue
    .line 43
    const-string v1, "BlackScreenGestureControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FrameAnimation start DrawType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v1, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;

    iget-object v2, p0, Lcom/zte/zgesture/ui/AnimActivity;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/zte/zgesture/ui/AnimActivity;->getPlaySequence(Lcom/zte/zgesture/ui/AnimActivity$DrawType;)[I

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;-><init>(Landroid/widget/ImageView;[I)V

    iput-object v1, p0, Lcom/zte/zgesture/ui/AnimActivity;->mFrameAnimation:Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;

    .line 45
    new-instance v0, Lcom/zte/zgesture/ui/AnimActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/ui/AnimActivity$1;-><init>(Lcom/zte/zgesture/ui/AnimActivity;)V

    .line 53
    .local v0, "animationListerner":Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;
    iget-object v1, p0, Lcom/zte/zgesture/ui/AnimActivity;->mFrameAnimation:Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;

    invoke-virtual {v1, v0}, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->setAnimationListerner(Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;)V

    .line 54
    iget-object v1, p0, Lcom/zte/zgesture/ui/AnimActivity;->mFrameAnimation:Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->play()V

    .line 56
    return-void
.end method

.method public static setAnimationListerner(Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;)V
    .locals 0
    .param p0, "animationListerner"    # Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;

    .prologue
    .line 59
    sput-object p0, Lcom/zte/zgesture/ui/AnimActivity;->mAnimationListerner:Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;

    .line 60
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v1, 0x7f03004b

    invoke-virtual {p0, v1}, Lcom/zte/zgesture/ui/AnimActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/zte/zgesture/ui/AnimActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 36
    const v1, 0x7f06005f

    invoke-virtual {p0, v1}, Lcom/zte/zgesture/ui/AnimActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zte/zgesture/ui/AnimActivity;->mImageView:Landroid/widget/ImageView;

    .line 37
    invoke-virtual {p0}, Lcom/zte/zgesture/ui/AnimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 38
    .local v0, "type":I
    invoke-static {}, Lcom/zte/zgesture/ui/AnimActivity$DrawType;->values()[Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/zte/zgesture/ui/AnimActivity;->loadShape(Lcom/zte/zgesture/ui/AnimActivity$DrawType;)V

    .line 40
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/zte/zgesture/ui/AnimActivity;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zgesture/ui/AnimActivity;->mImageView:Landroid/widget/ImageView;

    .line 94
    :cond_0
    invoke-static {p0}, Lcom/zte/zgesture/tools/Utils;->isLockScreenState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-static {p0}, Lcom/zte/zgesture/tools/Utils;->unLockSafe(Landroid/content/Context;)V

    .line 97
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 98
    const-string v0, "BlackScreenGestureControl"

    const-string v1, "AnimActivity onDestroy()"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "BlackScreenGestureControl"

    const-string v1, "AnimActivity onPause() "

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 68
    invoke-virtual {p0}, Lcom/zte/zgesture/ui/AnimActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/zte/zgesture/ui/AnimActivity;->mFrameAnimation:Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;

    invoke-virtual {v0}, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->stop()V

    .line 71
    sget-object v0, Lcom/zte/zgesture/ui/AnimActivity;->mAnimationListerner:Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/zte/zgesture/ui/AnimActivity;->mAnimationListerner:Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;

    invoke-interface {v0}, Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;->onAnimationEnd()V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/zte/zgesture/ui/AnimActivity;->mFrameAnimation:Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;

    invoke-virtual {v0}, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/zte/zgesture/ui/AnimActivity;->mFrameAnimation:Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;

    invoke-virtual {v0}, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->stop()V

    .line 79
    sget-object v0, Lcom/zte/zgesture/ui/AnimActivity;->mAnimationListerner:Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;

    if-eqz v0, :cond_2

    .line 80
    sget-object v0, Lcom/zte/zgesture/ui/AnimActivity;->mAnimationListerner:Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;

    invoke-interface {v0}, Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;->onAnimationEnd()V

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/zte/zgesture/ui/AnimActivity;->finish()V

    goto :goto_0
.end method
