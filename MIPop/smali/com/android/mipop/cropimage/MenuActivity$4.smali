.class Lcom/android/mipop/cropimage/MenuActivity$4;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mipop/cropimage/MenuActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/cropimage/MenuActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/cropimage/MenuActivity;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/mipop/cropimage/MenuActivity$4;->this$0:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 129
    const-string v3, "HouJiong"

    const-string v4, "screenshots onClick"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v3, p0, Lcom/android/mipop/cropimage/MenuActivity$4;->this$0:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-static {v3}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 133
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "full_fcreen_shot_clicked"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 138
    iget-object v3, p0, Lcom/android/mipop/cropimage/MenuActivity$4;->this$0:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-virtual {v3}, Lcom/android/mipop/cropimage/MenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "bundle"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 139
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CropImage"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "bundle"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 141
    const-string v3, "frommipop"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    iget-object v3, p0, Lcom/android/mipop/cropimage/MenuActivity$4;->this$0:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-virtual {v3, v2}, Lcom/android/mipop/cropimage/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 143
    iget-object v3, p0, Lcom/android/mipop/cropimage/MenuActivity$4;->this$0:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-virtual {v3}, Lcom/android/mipop/cropimage/MenuActivity;->finish()V

    .line 144
    return-void
.end method
