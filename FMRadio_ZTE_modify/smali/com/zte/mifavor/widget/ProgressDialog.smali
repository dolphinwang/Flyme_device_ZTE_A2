.class public Lcom/zte/mifavor/widget/ProgressDialog;
.super Lcom/zte/mifavor/widget/AlertDialog;
.source "ProgressDialog.java"


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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressStyle:I

    .line 79
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->initFormats()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressStyle:I

    .line 84
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->initFormats()V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/ProgressDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ProgressDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/ProgressDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ProgressDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/ProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ProgressDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/ProgressDialog;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ProgressDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/mifavor/widget/ProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ProgressDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private initFormats()V
    .locals 2

    .prologue
    .line 88
    const-string v0, "%1d/%2d"

    iput-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 89
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 90
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 91
    return-void
.end method

.method private onProgressChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 355
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 360
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/zte/mifavor/widget/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/zte/mifavor/widget/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/zte/mifavor/widget/ProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z

    .prologue
    .line 100
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/zte/mifavor/widget/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/zte/mifavor/widget/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/zte/mifavor/widget/ProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    .prologue
    .line 105
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/zte/mifavor/widget/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/zte/mifavor/widget/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/zte/mifavor/widget/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 111
    new-instance v0, Lcom/zte/mifavor/widget/ProgressDialog;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 112
    .local v0, "dialog":Lcom/zte/mifavor/widget/ProgressDialog;
    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v0, p2}, Lcom/zte/mifavor/widget/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v0, p3}, Lcom/zte/mifavor/widget/ProgressDialog;->setIndeterminate(Z)V

    .line 115
    invoke-virtual {v0, p4}, Lcom/zte/mifavor/widget/ProgressDialog;->setCancelable(Z)V

    .line 116
    invoke-virtual {v0, p5}, Lcom/zte/mifavor/widget/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 117
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/ProgressDialog;->show()V

    .line 118
    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 250
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 236
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    .line 243
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 263
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 265
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->onProgressChanged()V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIncrementBy:I

    goto :goto_0
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 274
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->onProgressChanged()V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIncrementSecondaryBy:I

    goto :goto_0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    .line 308
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 124
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/zte/extres/R$styleable;->AlertDialog:[I

    sget v5, Lcom/zte/extres/R$attr;->alertDialogStyle:I

    const/4 v6, 0x0

    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 127
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressStyle:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 132
    new-instance v3, Lcom/zte/mifavor/widget/ProgressDialog$1;

    invoke-direct {v3, p0}, Lcom/zte/mifavor/widget/ProgressDialog$1;-><init>(Lcom/zte/mifavor/widget/ProgressDialog;)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 157
    sget v3, Lcom/zte/extres/R$styleable;->AlertDialog_horizontalProgressLayout:I

    sget v4, Lcom/zte/extres/R$layout;->alert_dialog_progress:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 160
    .local v2, "view":Landroid/view/View;
    sget v3, Lcom/zte/extres/R$id;->progress:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 161
    sget v3, Lcom/zte/extres/R$id;->progress_number:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    .line 162
    sget v3, Lcom/zte/extres/R$id;->progress_percent:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 163
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ProgressDialog;->setView(Landroid/view/View;)V

    .line 172
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 173
    iget v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mMax:I

    if-lez v3, :cond_0

    .line 174
    iget v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mMax:I

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/ProgressDialog;->setMax(I)V

    .line 176
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressVal:I

    if-lez v3, :cond_1

    .line 177
    iget v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/ProgressDialog;->setProgress(I)V

    .line 179
    :cond_1
    iget v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mSecondaryProgressVal:I

    if-lez v3, :cond_2

    .line 180
    iget v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/ProgressDialog;->setSecondaryProgress(I)V

    .line 182
    :cond_2
    iget v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIncrementBy:I

    if-lez v3, :cond_3

    .line 183
    iget v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/ProgressDialog;->incrementProgressBy(I)V

    .line 185
    :cond_3
    iget v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIncrementSecondaryBy:I

    if-lez v3, :cond_4

    .line 186
    iget v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/ProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 188
    :cond_4
    iget-object v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    .line 189
    iget-object v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    :cond_5
    iget-object v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 192
    iget-object v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    :cond_6
    iget-object v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    .line 195
    iget-object v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 197
    :cond_7
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/ProgressDialog;->setIndeterminate(Z)V

    .line 198
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->onProgressChanged()V

    .line 199
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 200
    return-void

    .line 165
    .end local v2    # "view":Landroid/view/View;
    :cond_8
    sget v3, Lcom/zte/extres/R$styleable;->AlertDialog_progressLayout:I

    sget v4, Lcom/zte/extres/R$layout;->progress_dialog:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 168
    .restart local v2    # "view":Landroid/view/View;
    sget v3, Lcom/zte/extres/R$id;->progress:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 169
    sget v3, Lcom/zte/extres/R$id;->message:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 170
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ProgressDialog;->setView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->onStart()V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mHasStarted:Z

    .line 206
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->onStop()V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mHasStarted:Z

    .line 212
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 297
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 256
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->onProgressChanged()V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    iput p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 314
    iget v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 315
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 322
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 320
    :cond_1
    iput-object p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 217
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->onProgressChanged()V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    iput p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 338
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->onProgressChanged()V

    .line 339
    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 351
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->onProgressChanged()V

    .line 352
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 325
    iput p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgressStyle:I

    .line 326
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 226
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ProgressDialog;->onProgressChanged()V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    iput p1, p0, Lcom/zte/mifavor/widget/ProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method
