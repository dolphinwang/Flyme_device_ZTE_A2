.class Lcom/zte/mifavor/widget/GregorianLunarDateView$2;
.super Ljava/lang/Object;
.source "GregorianLunarDateView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/GregorianLunarDateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/GregorianLunarDateView;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$2;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$2;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    # getter for: Lcom/zte/mifavor/widget/GregorianLunarDateView;->mStateMachineEvent:Z
    invoke-static {v2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$900(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Z

    move-result v2

    if-ne v2, v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$2;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    # getter for: Lcom/zte/mifavor/widget/GregorianLunarDateView;->mLunarChoice:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$1000(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 233
    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$2;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    if-nez p2, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setGregorian(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
