.class public final Lcom/zte/mifavor/settings/ZteSettings;
.super Ljava/lang/Object;
.source "ZteSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/settings/ZteSettings$VoiceSwitch;,
        Lcom/zte/mifavor/settings/ZteSettings$ColorTemperatureMode;,
        Lcom/zte/mifavor/settings/ZteSettings$ScreenEffectMode;,
        Lcom/zte/mifavor/settings/ZteSettings$GloveMode;,
        Lcom/zte/mifavor/settings/ZteSettings$Global;,
        Lcom/zte/mifavor/settings/ZteSettings$Secure;,
        Lcom/zte/mifavor/settings/ZteSettings$System;
    }
.end annotation


# static fields
.field public static final ACTION_RINGER_CHANGED:Ljava/lang/String; = "cn.com.zte.settings.RINGER_CHANGED"

.field public static final ACTION_SETTINGS_CHANGING:Ljava/lang/String; = "cn.com.zte.settings.SETTINGS_CHANGING"

.field public static final ACTION_VOICEASSISTANT_INIT_READY:Ljava/lang/String; = "VOICEASSISTANT_INIT_READY"

.field public static final ACTION_VOICE_SENSE_ENABLED:Ljava/lang/String; = "VOICE_SENSE_ENABLED"

.field public static final EXTRA_KEY:Ljava/lang/String; = "key"

.field public static final EXTRA_VAL:Ljava/lang/String; = "val"

.field public static final NOTIFICATION_RINGTONE:Ljava/lang/String; = "pref_key_ringtone"

.field public static final PROP_IMMERSION_VIBRATE:Ljava/lang/String; = "persist.sys.immersion_vibrate"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    return-void
.end method
