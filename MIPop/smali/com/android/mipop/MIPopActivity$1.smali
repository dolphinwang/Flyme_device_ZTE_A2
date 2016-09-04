.class Lcom/android/mipop/MIPopActivity$1;
.super Ljava/lang/Object;
.source "MIPopActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mipop/MIPopActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/MIPopActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/MIPopActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/mipop/MIPopActivity$1;->this$0:Lcom/android/mipop/MIPopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mipop/MIPopActivity$1;->this$0:Lcom/android/mipop/MIPopActivity;

    # getter for: Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mipop/MIPopActivity;->access$000(Lcom/android/mipop/MIPopActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lxg mPressureFuctionSwitch onCheckedChanged isChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/mipop/MIPopActivity$1;->this$0:Lcom/android/mipop/MIPopActivity;

    # invokes: Lcom/android/mipop/MIPopActivity;->modifyDatabaseMipop(Z)V
    invoke-static {v0, p2}, Lcom/android/mipop/MIPopActivity;->access$100(Lcom/android/mipop/MIPopActivity;Z)V

    .line 155
    iget-object v0, p0, Lcom/android/mipop/MIPopActivity$1;->this$0:Lcom/android/mipop/MIPopActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mipop/MIPopActivity;->setMiPopIsClicked(Z)V

    .line 156
    return-void
.end method
