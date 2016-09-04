.class Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;
.super Landroid/widget/ArrayAdapter;
.source "YearPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/YearPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YearAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mItemTextAppearanceResId:I

.field final synthetic this$0:Lcom/zte/mifavor/widget/YearPickerView;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/widget/YearPickerView;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I

    .prologue
    .line 130
    iput-object p1, p0, Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;->this$0:Lcom/zte/mifavor/widget/YearPickerView;

    .line 131
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 132
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x1

    .line 136
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;

    .line 138
    .local v1, "v":Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;->mItemTextAppearanceResId:I

    invoke-virtual {v1, v3, v4}, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->setTextAppearance(Landroid/content/Context;I)V

    .line 139
    invoke-virtual {v1}, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->requestLayout()V

    .line 140
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 141
    .local v2, "year":I
    iget-object v3, p0, Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;->this$0:Lcom/zte/mifavor/widget/YearPickerView;

    # getter for: Lcom/zte/mifavor/widget/YearPickerView;->mController:Lcom/zte/mifavor/widget/DatePickerController;
    invoke-static {v3}, Lcom/zte/mifavor/widget/YearPickerView;->access$000(Lcom/zte/mifavor/widget/YearPickerView;)Lcom/zte/mifavor/widget/DatePickerController;

    move-result-object v3

    invoke-interface {v3}, Lcom/zte/mifavor/widget/DatePickerController;->getSelectedDay()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 142
    .local v0, "selected":Z
    :goto_0
    invoke-virtual {v1, v0}, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->setDrawIndicator(Z)V

    .line 143
    if-eqz v0, :cond_0

    .line 144
    iget-object v3, p0, Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;->this$0:Lcom/zte/mifavor/widget/YearPickerView;

    # getter for: Lcom/zte/mifavor/widget/YearPickerView;->mYearSelectedCircleColor:I
    invoke-static {v3}, Lcom/zte/mifavor/widget/YearPickerView;->access$100(Lcom/zte/mifavor/widget/YearPickerView;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->setCircleColor(I)V

    .line 146
    :cond_0
    return-object v1

    .line 141
    .end local v0    # "selected":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setItemTextAppearance(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/zte/mifavor/widget/YearPickerView$YearAdapter;->mItemTextAppearanceResId:I

    .line 151
    return-void
.end method
