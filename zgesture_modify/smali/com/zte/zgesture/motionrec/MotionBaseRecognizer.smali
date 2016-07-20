.class public abstract Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;
.super Ljava/lang/Object;
.source "MotionBaseRecognizer.java"


# static fields
.field public static final RET_NOT_RECOG:I = 0x0

.field public static final RET_RECOG:I = 0x1


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mInDemo:Z

.field protected mPriority:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;->mPriority:I

    .line 11
    iput-boolean v0, p0, Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;->mInDemo:Z

    .line 27
    return-void
.end method


# virtual methods
.method public SetDemoStatus(Z)V
    .locals 0
    .param p1, "demo"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;->mInDemo:Z

    .line 15
    return-void
.end method

.method public abstract doRecoginzer()V
.end method

.method public abstract finish()V
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;->mPriority:I

    return v0
.end method

.method public abstract handleMotion(Landroid/view/MotionEvent;)I
.end method

.method public isInDemo()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;->mInDemo:Z

    return v0
.end method
