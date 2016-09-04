.class Lcom/android/mipop/ChangeKeyActivity$1;
.super Ljava/lang/Object;
.source "ChangeKeyActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mipop/ChangeKeyActivity;->update(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/ChangeKeyActivity;

.field final synthetic val$listAdapter:Lcom/android/mipop/ChangeKeyActivity$SettingListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mipop/ChangeKeyActivity;Lcom/android/mipop/ChangeKeyActivity$SettingListAdapter;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/mipop/ChangeKeyActivity$1;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    iput-object p2, p0, Lcom/android/mipop/ChangeKeyActivity$1;->val$listAdapter:Lcom/android/mipop/ChangeKeyActivity$SettingListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "index"    # I
    .param p4, "arg3"    # J
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
    .line 327
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move v1, p3

    .line 328
    .local v1, "curKeyValue":I
    iget-object v2, p0, Lcom/android/mipop/ChangeKeyActivity$1;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->setKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mipop/ChangeKeyActivity;->access$000(Lcom/android/mipop/ChangeKeyActivity;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "curKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mipop/ChangeKeyActivity$1;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # invokes: Lcom/android/mipop/ChangeKeyActivity;->updateCurKey(Ljava/lang/String;I)V
    invoke-static {v2, v0, v1}, Lcom/android/mipop/ChangeKeyActivity;->access$100(Lcom/android/mipop/ChangeKeyActivity;Ljava/lang/String;I)V

    .line 330
    iget-object v2, p0, Lcom/android/mipop/ChangeKeyActivity$1;->val$listAdapter:Lcom/android/mipop/ChangeKeyActivity$SettingListAdapter;

    invoke-virtual {v2}, Lcom/android/mipop/ChangeKeyActivity$SettingListAdapter;->notifyDataSetChanged()V

    .line 331
    return-void
.end method
