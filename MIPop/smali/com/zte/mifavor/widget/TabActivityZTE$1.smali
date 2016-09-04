.class Lcom/zte/mifavor/widget/TabActivityZTE$1;
.super Ljava/lang/Object;
.source "TabActivityZTE.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/TabActivityZTE;->setActionBarContentColor(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/TabActivityZTE;

.field final synthetic val$color:I

.field final synthetic val$textcolor:I


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/TabActivityZTE;II)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/zte/mifavor/widget/TabActivityZTE$1;->this$0:Lcom/zte/mifavor/widget/TabActivityZTE;

    iput p2, p0, Lcom/zte/mifavor/widget/TabActivityZTE$1;->val$color:I

    iput p3, p0, Lcom/zte/mifavor/widget/TabActivityZTE$1;->val$textcolor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabActivityZTE$1;->this$0:Lcom/zte/mifavor/widget/TabActivityZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/TabActivityZTE$1;->val$color:I

    iget v2, p0, Lcom/zte/mifavor/widget/TabActivityZTE$1;->val$textcolor:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/zte/mifavor/widget/TabActivityZTE;->setAllChildViewsColor(Landroid/view/View;II)V

    .line 159
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 152
    return-void
.end method
