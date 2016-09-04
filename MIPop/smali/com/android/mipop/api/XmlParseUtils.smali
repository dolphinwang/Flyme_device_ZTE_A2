.class public Lcom/android/mipop/api/XmlParseUtils;
.super Ljava/lang/Object;
.source "XmlParseUtils.java"


# static fields
.field private static CONFIG_PATH:Ljava/lang/String;

.field private static LocalProject:Ljava/lang/String;

.field private static MipopOn:Ljava/lang/String;

.field private static QuickSwitchSupport:Ljava/lang/String;

.field private static SoftNavibarOn:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static physicalKeybar:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    const-string v0, "/etc/mipop/mipop_customize.xml"

    sput-object v0, Lcom/android/mipop/api/XmlParseUtils;->CONFIG_PATH:Ljava/lang/String;

    .line 16
    const-string v0, "mipopXmlParseUtils"

    sput-object v0, Lcom/android/mipop/api/XmlParseUtils;->TAG:Ljava/lang/String;

    .line 18
    sput-object v1, Lcom/android/mipop/api/XmlParseUtils;->physicalKeybar:Ljava/lang/String;

    .line 19
    sput-object v1, Lcom/android/mipop/api/XmlParseUtils;->MipopOn:Ljava/lang/String;

    .line 20
    sput-object v1, Lcom/android/mipop/api/XmlParseUtils;->SoftNavibarOn:Ljava/lang/String;

    .line 22
    sput-object v1, Lcom/android/mipop/api/XmlParseUtils;->LocalProject:Ljava/lang/String;

    .line 24
    sput-object v1, Lcom/android/mipop/api/XmlParseUtils;->QuickSwitchSupport:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsLocalProject()I
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/android/mipop/api/XmlParseUtils;->LocalProject:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 90
    const-string v0, "LocalProject"

    invoke-static {v0}, Lcom/android/mipop/api/XmlParseUtils;->parseCustomizeFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mipop/api/XmlParseUtils;->LocalProject:Ljava/lang/String;

    .line 93
    :cond_0
    const-string v0, "1"

    sget-object v1, Lcom/android/mipop/api/XmlParseUtils;->LocalProject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    .line 95
    :cond_1
    const-string v0, "0"

    sget-object v1, Lcom/android/mipop/api/XmlParseUtils;->LocalProject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static IsMipopOn()I
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/android/mipop/api/XmlParseUtils;->MipopOn:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 65
    const-string v0, "Mipop-on"

    invoke-static {v0}, Lcom/android/mipop/api/XmlParseUtils;->parseCustomizeFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mipop/api/XmlParseUtils;->MipopOn:Ljava/lang/String;

    .line 67
    :cond_0
    const-string v0, "on"

    sget-object v1, Lcom/android/mipop/api/XmlParseUtils;->MipopOn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    .line 69
    :cond_1
    const-string v0, "off"

    sget-object v1, Lcom/android/mipop/api/XmlParseUtils;->MipopOn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static IsQuickSwitchSupport()I
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/android/mipop/api/XmlParseUtils;->QuickSwitchSupport:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 103
    const-string v0, "QuickSwitchSupport"

    invoke-static {v0}, Lcom/android/mipop/api/XmlParseUtils;->parseCustomizeFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mipop/api/XmlParseUtils;->QuickSwitchSupport:Ljava/lang/String;

    .line 106
    :cond_0
    const-string v0, "1"

    sget-object v1, Lcom/android/mipop/api/XmlParseUtils;->QuickSwitchSupport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    .line 108
    :cond_1
    const-string v0, "0"

    sget-object v1, Lcom/android/mipop/api/XmlParseUtils;->QuickSwitchSupport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static IsSoftNavibarOn()I
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/android/mipop/api/XmlParseUtils;->SoftNavibarOn:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 77
    const-string v0, "SoftNavibar-on"

    invoke-static {v0}, Lcom/android/mipop/api/XmlParseUtils;->parseCustomizeFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mipop/api/XmlParseUtils;->SoftNavibarOn:Ljava/lang/String;

    .line 79
    :cond_0
    const-string v0, "on"

    sget-object v1, Lcom/android/mipop/api/XmlParseUtils;->SoftNavibarOn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    .line 81
    :cond_1
    const-string v0, "off"

    sget-object v1, Lcom/android/mipop/api/XmlParseUtils;->SoftNavibarOn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getXmlFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static hasSoftNavibar()Z
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/android/mipop/api/XmlParseUtils;->physicalKeybar:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 58
    const-string v0, "PhysicalKeyBar"

    invoke-static {v0}, Lcom/android/mipop/api/XmlParseUtils;->parseCustomizeFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mipop/api/XmlParseUtils;->physicalKeybar:Ljava/lang/String;

    .line 60
    :cond_0
    const-string v0, "off"

    sget-object v1, Lcom/android/mipop/api/XmlParseUtils;->physicalKeybar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static parseCustomizeFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 31
    const/4 v1, 0x0

    .line 33
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    sget-object v6, Lcom/android/mipop/api/XmlParseUtils;->CONFIG_PATH:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/mipop/api/XmlParseUtils;->getXmlFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 35
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 38
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 39
    .local v4, "type":I
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "tag":Ljava/lang/String;
    const-string v6, "config"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 41
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 42
    const/4 v6, 0x0

    invoke-interface {v0, v6, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v2

    .line 53
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "type":I
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :goto_0
    return-object v5

    .line 44
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "type":I
    :cond_1
    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 45
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 52
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 50
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "type":I
    :catch_0
    move-exception v6

    goto :goto_0

    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 48
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v6

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 46
    :catch_4
    move-exception v6

    goto :goto_0

    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v6

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    goto :goto_0
.end method
