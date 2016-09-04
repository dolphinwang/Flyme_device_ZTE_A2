.class public Lcom/android/mipop/cropimage/MiProgressDialog;
.super Lcom/zte/mifavor/widget/AlertDialog;
.source "MiProgressDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;

.field private myContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgressStyle:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->myContext:Landroid/content/Context;

    .line 88
    iput-object p1, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->myContext:Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Lcom/android/mipop/cropimage/MiProgressDialog;->initFormats()V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgressStyle:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->myContext:Landroid/content/Context;

    .line 94
    iput-object p1, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->myContext:Landroid/content/Context;

    .line 95
    invoke-direct {p0}, Lcom/android/mipop/cropimage/MiProgressDialog;->initFormats()V

    .line 96
    return-void
.end method

.method private initFormats()V
    .locals 2

    .prologue
    .line 99
    const-string v0, "%1d/%2d"

    iput-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 100
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 101
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 102
    return-void
.end method

.method private onProgressChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 367
    iget v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 372
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/android/mipop/cropimage/MiProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/mipop/cropimage/MiProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/android/mipop/cropimage/MiProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/android/mipop/cropimage/MiProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z

    .prologue
    .line 111
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/mipop/cropimage/MiProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/android/mipop/cropimage/MiProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/android/mipop/cropimage/MiProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    .prologue
    .line 116
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/mipop/cropimage/MiProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/android/mipop/cropimage/MiProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/android/mipop/cropimage/MiProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 122
    new-instance v0, Lcom/android/mipop/cropimage/MiProgressDialog;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/MiProgressDialog;-><init>(Landroid/content/Context;)V

    .line 123
    .local v0, "dialog":Lcom/android/mipop/cropimage/MiProgressDialog;
    invoke-virtual {v0, p1}, Lcom/android/mipop/cropimage/MiProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {v0, p2}, Lcom/android/mipop/cropimage/MiProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {v0, p3}, Lcom/android/mipop/cropimage/MiProgressDialog;->setIndeterminate(Z)V

    .line 126
    invoke-virtual {v0, p4}, Lcom/android/mipop/cropimage/MiProgressDialog;->setCancelable(Z)V

    .line 127
    invoke-virtual {v0, p5}, Lcom/android/mipop/cropimage/MiProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 128
    invoke-virtual {v0}, Lcom/android/mipop/cropimage/MiProgressDialog;->show()V

    .line 129
    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 262
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 248
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    .line 255
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 277
    invoke-direct {p0}, Lcom/android/mipop/cropimage/MiProgressDialog;->onProgressChanged()V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    iget v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mIncrementBy:I

    goto :goto_0
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 286
    invoke-direct {p0}, Lcom/android/mipop/cropimage/MiProgressDialog;->onProgressChanged()V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    iget v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mIncrementSecondaryBy:I

    goto :goto_0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    .line 320
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 134
    iget-object v3, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->myContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 135
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->myContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v5, 0x101005d

    const/4 v6, 0x0

    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 178
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v3, "shen"

    const-string v4, "shen mProgressStyle == STYLE_VERTICAL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const v3, 0x7f030074

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 180
    .local v2, "view":Landroid/view/View;
    const v3, 0x102000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 181
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 182
    invoke-virtual {p0, v2}, Lcom/android/mipop/cropimage/MiProgressDialog;->setView(Landroid/view/View;)V

    .line 184
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    iget v3, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mMax:I

    if-lez v3, :cond_0

    .line 186
    iget v3, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mMax:I

    invoke-virtual {p0, v3}, Lcom/android/mipop/cropimage/MiProgressDialog;->setMax(I)V

    .line 188
    :cond_0
    iget v3, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgressVal:I

    if-lez v3, :cond_1

    .line 189
    iget v3, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v3}, Lcom/android/mipop/cropimage/MiProgressDialog;->setProgress(I)V

    .line 191
    :cond_1
    iget v3, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mSecondaryProgressVal:I

    if-lez v3, :cond_2

    .line 192
    iget v3, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v3}, Lcom/android/mipop/cropimage/MiProgressDialog;->setSecondaryProgress(I)V

    .line 194
    :cond_2
    iget v3, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mIncrementBy:I

    if-lez v3, :cond_3

    .line 195
    iget v3, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v3}, Lcom/android/mipop/cropimage/MiProgressDialog;->incrementProgressBy(I)V

    .line 197
    :cond_3
    iget v3, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mIncrementSecondaryBy:I

    if-lez v3, :cond_4

    .line 198
    iget v3, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v3}, Lcom/android/mipop/cropimage/MiProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 200
    :cond_4
    iget-object v3, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    .line 201
    iget-object v3, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/android/mipop/cropimage/MiProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    :cond_5
    iget-object v3, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 204
    iget-object v3, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/android/mipop/cropimage/MiProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    :cond_6
    iget-object v3, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    .line 207
    iget-object v3, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/android/mipop/cropimage/MiProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 209
    :cond_7
    iget-boolean v3, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v3}, Lcom/android/mipop/cropimage/MiProgressDialog;->setIndeterminate(Z)V

    .line 210
    invoke-direct {p0}, Lcom/android/mipop/cropimage/MiProgressDialog;->onProgressChanged()V

    .line 211
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 212
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->onStart()V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mHasStarted:Z

    .line 218
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->onStop()V

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mHasStarted:Z

    .line 224
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    iput-boolean p1, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    iput-object p1, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 268
    invoke-direct {p0}, Lcom/android/mipop/cropimage/MiProgressDialog;->onProgressChanged()V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    iput p1, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 326
    iget v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 327
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    if-eqz p1, :cond_0

    const-string v0, ""

    if-eq p1, v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 333
    :cond_2
    iput-object p1, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 229
    invoke-direct {p0}, Lcom/android/mipop/cropimage/MiProgressDialog;->onProgressChanged()V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    iput p1, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    iput-object p1, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 350
    invoke-direct {p0}, Lcom/android/mipop/cropimage/MiProgressDialog;->onProgressChanged()V

    .line 351
    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 363
    invoke-direct {p0}, Lcom/android/mipop/cropimage/MiProgressDialog;->onProgressChanged()V

    .line 364
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 338
    iput p1, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgressStyle:I

    .line 339
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 238
    invoke-direct {p0}, Lcom/android/mipop/cropimage/MiProgressDialog;->onProgressChanged()V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    iput p1, p0, Lcom/android/mipop/cropimage/MiProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method
