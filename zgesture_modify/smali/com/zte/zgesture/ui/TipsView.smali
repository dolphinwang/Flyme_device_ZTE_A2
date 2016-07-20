.class public Lcom/zte/zgesture/ui/TipsView;
.super Landroid/widget/RelativeLayout;
.source "TipsView.java"


# instance fields
.field private tipText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/zte/zgesture/ui/TipsView;->tipText:Landroid/widget/TextView;

    .line 17
    iget-object v3, p0, Lcom/zte/zgesture/ui/TipsView;->tipText:Landroid/widget/TextView;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    iget-object v3, p0, Lcom/zte/zgesture/ui/TipsView;->tipText:Landroid/widget/TextView;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 19
    iget-object v3, p0, Lcom/zte/zgesture/ui/TipsView;->tipText:Landroid/widget/TextView;

    const v4, 0x7f02022a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 21
    invoke-virtual {p0}, Lcom/zte/zgesture/ui/TipsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 22
    .local v2, "winManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 23
    .local v1, "screenHeight":I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 24
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 25
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 26
    div-int/lit8 v3, v1, 0x8

    invoke-virtual {v0, v5, v5, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 27
    iget-object v3, p0, Lcom/zte/zgesture/ui/TipsView;->tipText:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v0}, Lcom/zte/zgesture/ui/TipsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/zte/zgesture/ui/TipsView;->tipText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    :goto_0
    iget-object v0, p0, Lcom/zte/zgesture/ui/TipsView;->tipText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/zte/zgesture/ui/TipsView;->tipText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
