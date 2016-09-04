.class public Lcom/android/mipop/cropimage/MenuLayout;
.super Landroid/widget/FrameLayout;
.source "MenuLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x64

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, "b":Landroid/widget/Button;
    const-string v3, "Hello"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/MenuLayout;->addView(Landroid/view/View;)V

    .line 34
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 35
    .local v2, "wmParams":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 37
    .local v1, "mWindowManager":Landroid/view/WindowManager;
    const/16 v3, 0x7d0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 38
    const/4 v3, -0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 39
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 40
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x40000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 41
    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 42
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 43
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 44
    const/16 v3, 0x12c

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 45
    const/16 v3, 0xc8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 47
    invoke-interface {v1, p0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method
