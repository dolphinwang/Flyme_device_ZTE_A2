.class Lcom/zte/mifavor/widget/AlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/AlertController$AlertParams;->createListView(Lcom/zte/mifavor/widget/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

.field final synthetic val$listView:Lcom/zte/mifavor/widget/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/zte/mifavor/widget/AlertController$RecycleListView;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # [Ljava/lang/CharSequence;

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$1;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p6, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$1;->val$listView:Lcom/zte/mifavor/widget/AlertController$RecycleListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1016
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1017
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$1;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v2, v2, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v2, :cond_0

    .line 1018
    iget-object v2, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$1;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v2, v2, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean v0, v2, p1

    .line 1019
    .local v0, "isItemChecked":Z
    if-eqz v0, :cond_0

    .line 1020
    iget-object v2, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$1;->val$listView:Lcom/zte/mifavor/widget/AlertController$RecycleListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/zte/mifavor/widget/AlertController$RecycleListView;->setItemChecked(IZ)V

    .line 1023
    .end local v0    # "isItemChecked":Z
    :cond_0
    return-object v1
.end method
