.class Lcom/zte/zgesture/setting/AlarmSettingActivity$3;
.super Ljava/lang/Object;
.source "AlarmSettingActivity.java"

# interfaces
.implements Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/setting/AlarmSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/AlarmSettingActivity;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/setting/AlarmSettingActivity;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/zte/zgesture/setting/AlarmSettingActivity$3;->this$0:Lcom/zte/zgesture/setting/AlarmSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/zte/mifavor/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Lcom/zte/mifavor/preference/Preference;

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/zgesture/setting/AlarmSettingActivity$3;->this$0:Lcom/zte/zgesture/setting/AlarmSettingActivity;

    const-class v2, Lcom/zte/zgesture/setting/TryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "type"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    const-string v1, "enableSwitch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/zte/zgesture/setting/AlarmSettingActivity$3;->this$0:Lcom/zte/zgesture/setting/AlarmSettingActivity;

    invoke-virtual {v1, v0}, Lcom/zte/zgesture/setting/AlarmSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    const/4 v1, 0x1

    return v1
.end method
