.class Lcom/zte/mifavor/widget/PagerSecond$2;
.super Ljava/lang/Object;
.source "PagerSecond.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/PagerSecond;->addTab(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/PagerSecond;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/PagerSecond;I)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond$2;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iput p2, p0, Lcom/zte/mifavor/widget/PagerSecond$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$2;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    # getter for: Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/zte/mifavor/widget/PagerSecond;->access$200(Lcom/zte/mifavor/widget/PagerSecond;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond$2;->val$position:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 274
    return-void
.end method
