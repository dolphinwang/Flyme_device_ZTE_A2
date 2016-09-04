.class Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$3;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$3;->this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1147
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1148
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$3;->this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->mDropDownList:Lcom/zte/mifavor/actionbar/menu/DropDownListView;
    invoke-static {v1}, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->access$500(Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;)Lcom/zte/mifavor/actionbar/menu/DropDownListView;

    move-result-object v0

    .line 1150
    .local v0, "dropDownList":Lcom/zte/mifavor/actionbar/menu/DropDownListView;
    if-eqz v0, :cond_0

    .line 1151
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/DropDownListView;->setListSelectionHidden(Z)V

    .line 1154
    .end local v0    # "dropDownList":Lcom/zte/mifavor/actionbar/menu/DropDownListView;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1157
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
