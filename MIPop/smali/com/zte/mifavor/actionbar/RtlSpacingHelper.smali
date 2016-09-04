.class Lcom/zte/mifavor/actionbar/RtlSpacingHelper;
.super Ljava/lang/Object;
.source "RtlSpacingHelper.java"


# static fields
.field public static final UNDEFINED:I = -0x80000000


# instance fields
.field private mEnd:I

.field private mExplicitLeft:I

.field private mExplicitRight:I

.field private mIsRelative:Z

.field private mIsRtl:Z

.field private mLeft:I

.field private mRight:I

.field private mStart:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mLeft:I

    .line 7
    iput v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mRight:I

    .line 8
    iput v1, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mStart:I

    .line 9
    iput v1, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mEnd:I

    .line 10
    iput v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mExplicitLeft:I

    .line 11
    iput v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mExplicitRight:I

    .line 13
    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mIsRtl:Z

    .line 14
    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mIsRelative:Z

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mLeft:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mRight:I

    goto :goto_0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mLeft:I

    return v0
.end method

.method public getRight()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mRight:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mRight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mLeft:I

    goto :goto_0
.end method

.method public setAbsolute(II)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mIsRelative:Z

    .line 47
    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mExplicitLeft:I

    iput p1, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mLeft:I

    .line 48
    :cond_0
    if-eq p2, v1, :cond_1

    iput p2, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mExplicitRight:I

    iput p2, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mRight:I

    .line 49
    :cond_1
    return-void
.end method

.method public setDirection(Z)V
    .locals 2
    .param p1, "isRtl"    # Z

    .prologue
    const/high16 v1, -0x80000000

    .line 52
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mIsRtl:Z

    if-ne p1, v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 55
    :cond_0
    iput-boolean p1, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mIsRtl:Z

    .line 56
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mIsRelative:Z

    if-eqz v0, :cond_6

    .line 57
    if-eqz p1, :cond_3

    .line 58
    iget v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mEnd:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mEnd:I

    :goto_1
    iput v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mLeft:I

    .line 59
    iget v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mStart:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mStart:I

    :goto_2
    iput v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mRight:I

    goto :goto_0

    .line 58
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mExplicitLeft:I

    goto :goto_1

    .line 59
    :cond_2
    iget v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mExplicitRight:I

    goto :goto_2

    .line 61
    :cond_3
    iget v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mStart:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mStart:I

    :goto_3
    iput v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mLeft:I

    .line 62
    iget v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mEnd:I

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mEnd:I

    :goto_4
    iput v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mRight:I

    goto :goto_0

    .line 61
    :cond_4
    iget v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mExplicitLeft:I

    goto :goto_3

    .line 62
    :cond_5
    iget v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mExplicitRight:I

    goto :goto_4

    .line 65
    :cond_6
    iget v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mExplicitLeft:I

    iput v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mLeft:I

    .line 66
    iget v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mExplicitRight:I

    iput v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mRight:I

    goto :goto_0
.end method

.method public setRelative(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 33
    iput p1, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mStart:I

    .line 34
    iput p2, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mEnd:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mIsRelative:Z

    .line 36
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v0, :cond_2

    .line 37
    if-eq p2, v1, :cond_0

    iput p2, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mLeft:I

    .line 38
    :cond_0
    if-eq p1, v1, :cond_1

    iput p1, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mRight:I

    .line 43
    :cond_1
    :goto_0
    return-void

    .line 40
    :cond_2
    if-eq p1, v1, :cond_3

    iput p1, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mLeft:I

    .line 41
    :cond_3
    if-eq p2, v1, :cond_1

    iput p2, p0, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->mRight:I

    goto :goto_0
.end method
