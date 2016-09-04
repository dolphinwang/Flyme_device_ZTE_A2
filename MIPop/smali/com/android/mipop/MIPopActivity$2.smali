.class Lcom/android/mipop/MIPopActivity$2;
.super Ljava/lang/Object;
.source "MIPopActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/MIPopActivity;
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
    .line 160
    iput-object p1, p0, Lcom/android/mipop/MIPopActivity$2;->this$0:Lcom/android/mipop/MIPopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mipop.changekey"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 164
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity$2;->this$0:Lcom/android/mipop/MIPopActivity;

    invoke-virtual {v1, v0}, Lcom/android/mipop/MIPopActivity;->startActivity(Landroid/content/Intent;)V

    .line 165
    return-void
.end method
