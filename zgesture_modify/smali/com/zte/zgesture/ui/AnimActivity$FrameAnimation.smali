.class public Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;
.super Ljava/lang/Object;
.source "AnimActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/ui/AnimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameAnimation"
.end annotation


# instance fields
.field private mAnimationListerner:Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;

.field private mCurrentFameNumber:I

.field private mDurations:[I

.field private mEndFrameNumber:I

.field private mFrameSequence:[I

.field private mImageView:Landroid/widget/ImageView;

.field private mNeedStart:Z

.field private mNext:Z


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;[I)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "frameSequence"    # [I

    .prologue
    const/4 v0, 0x1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-boolean v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mNext:Z

    .line 147
    iput-boolean v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mNeedStart:Z

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mCurrentFameNumber:I

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->setMember(Landroid/widget/ImageView;[I)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;[I[I)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "frameSequence"    # [I
    .param p3, "durations"    # [I

    .prologue
    const/4 v0, 0x1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-boolean v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mNext:Z

    .line 147
    iput-boolean v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mNeedStart:Z

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mCurrentFameNumber:I

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->setMember(Landroid/widget/ImageView;[I)V

    .line 169
    iput-object p3, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mDurations:[I

    .line 170
    return-void
.end method

.method private setMember(Landroid/widget/ImageView;[I)V
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "frameSequence"    # [I

    .prologue
    const/4 v3, 0x1

    .line 151
    iput-object p1, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mImageView:Landroid/widget/ImageView;

    .line 152
    iput-object p2, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mFrameSequence:[I

    .line 153
    array-length v0, p2

    iput v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mEndFrameNumber:I

    .line 154
    iget-object v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mFrameSequence:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    iput-boolean v3, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mNext:Z

    .line 156
    iput-boolean v3, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mNeedStart:Z

    .line 157
    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 225
    iget v1, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mCurrentFameNumber:I

    if-le v1, v0, :cond_0

    iget v1, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mCurrentFameNumber:I

    iget v2, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mEndFrameNumber:I

    if-ge v1, v2, :cond_0

    .line 228
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public play()V
    .locals 2

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mNeedStart:Z

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x1

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->play(II)V

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mNeedStart:Z

    .line 216
    const-string v0, "BlackScreenGestureControl"

    const-string v1, "FrameAnimation start"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    return-void
.end method

.method public play(I)V
    .locals 4
    .param p1, "number"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mCurrentFameNumber:I

    .line 175
    iget-boolean v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mNext:Z

    if-eqz v0, :cond_0

    .line 176
    iget v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mEndFrameNumber:I

    if-ne p1, v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mAnimationListerner:Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mAnimationListerner:Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;

    invoke-interface {v0}, Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;->onAnimationEnd()V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    if-lez p1, :cond_0

    iget v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mEndFrameNumber:I

    if-ge p1, v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mFrameSequence:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    iget-object v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation$1;

    invoke-direct {v1, p0, p1}, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation$1;-><init>(Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;I)V

    iget-object v2, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mDurations:[I

    aget v2, v2, p1

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public play(II)V
    .locals 4
    .param p1, "number"    # I
    .param p2, "duration"    # I

    .prologue
    .line 193
    const-string v0, "BlackScreenGestureControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FrameAnimation number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iput p1, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mCurrentFameNumber:I

    .line 195
    iget-boolean v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mNext:Z

    if-eqz v0, :cond_0

    .line 196
    iget v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mEndFrameNumber:I

    if-ne p1, v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mAnimationListerner:Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mAnimationListerner:Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;

    invoke-interface {v0}, Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;->onAnimationEnd()V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    if-lez p1, :cond_0

    iget v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mEndFrameNumber:I

    if-ge p1, v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mFrameSequence:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    iget-object v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation$2;-><init>(Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;II)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setAnimationListerner(Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;)V
    .locals 0
    .param p1, "animationListerner"    # Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mAnimationListerner:Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;

    .line 161
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->mNext:Z

    .line 222
    return-void
.end method
