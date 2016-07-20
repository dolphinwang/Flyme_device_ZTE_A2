.class public Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;
.super Ljava/lang/Object;
.source "MtkAgpsXmlParser.java"


# static fields
.field public static final supportMajVer:Ljava/lang/String; = "1"

.field public static final supportMinVer:Ljava/lang/String; = "1"


# instance fields
.field protected agpsConfig:Lcom/mediatek/lbs/em2/utils/AgpsConfig;

.field protected doc:Lorg/w3c/dom/Document;

.field protected versionString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    const-string v0, "/etc/agps_profiles_conf2.xml"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v9, Lcom/mediatek/lbs/em2/utils/AgpsConfig;

    invoke-direct {v9}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;-><init>()V

    iput-object v9, p0, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->agpsConfig:Lcom/mediatek/lbs/em2/utils/AgpsConfig;

    .line 47
    invoke-static {p1}, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->getXmlDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v9

    iput-object v9, p0, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->doc:Lorg/w3c/dom/Document;

    .line 50
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v9}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    const-string v10, "maj_ver"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "majVer":Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v9}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    const-string v10, "min_ver"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "minVer":Ljava/lang/String;
    const-string v9, "1"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 53
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Version Incompatiable, Parser=1.1 XML_file="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 57
    :cond_0
    const-string v9, "1"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 58
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Version Warning, Parser=1.1 XML_file="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->log(Ljava/lang/Object;)V

    .line 61
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parser=[1.1] xml=["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->versionString:Ljava/lang/String;

    .line 66
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->doc:Lorg/w3c/dom/Document;

    const-string v10, "supl_profile"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 67
    .local v4, "nList":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v1, v9, :cond_3

    .line 68
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 69
    .local v5, "nNode":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-ne v9, v11, :cond_2

    move-object v0, v5

    .line 70
    check-cast v0, Lorg/w3c/dom/Element;

    .line 71
    .local v0, "e":Lorg/w3c/dom/Element;
    new-instance v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;

    invoke-direct {v7}, Lcom/mediatek/lbs/em2/utils/SuplProfile;-><init>()V

    .line 72
    .local v7, "profile":Lcom/mediatek/lbs/em2/utils/SuplProfile;
    const-string v9, "name"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;->name:Ljava/lang/String;

    .line 73
    const-string v9, "addr"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addr:Ljava/lang/String;

    .line 74
    const-string v9, "port"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;->port:I

    .line 75
    const-string v9, "tls"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;->tls:Z

    .line 76
    const-string v9, "mcc_mnc"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;->mccMnc:Ljava/lang/String;

    .line 77
    const-string v9, "app_id"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;->appId:Ljava/lang/String;

    .line 78
    const-string v9, "provider_id"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;->providerId:Ljava/lang/String;

    .line 79
    const-string v9, "default_apn"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;->defaultApn:Ljava/lang/String;

    .line 80
    const-string v9, "optional_apn"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn:Ljava/lang/String;

    .line 81
    const-string v9, "optional_apn_2"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn2:Ljava/lang/String;

    .line 82
    const-string v9, "address_type"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addressType:Ljava/lang/String;

    .line 84
    invoke-virtual {v7}, Lcom/mediatek/lbs/em2/utils/SuplProfile;->correctIfInvalid()Z

    .line 85
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->agpsConfig:Lcom/mediatek/lbs/em2/utils/AgpsConfig;

    invoke-virtual {v9}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getSuplProfiles()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v0    # "e":Lorg/w3c/dom/Element;
    .end local v7    # "profile":Lcom/mediatek/lbs/em2/utils/SuplProfile;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 89
    .end local v5    # "nNode":Lorg/w3c/dom/Node;
    :cond_3
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->doc:Lorg/w3c/dom/Document;

    const-string v10, "cur_supl_profile"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 90
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v1, v9, :cond_5

    .line 91
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 92
    .restart local v5    # "nNode":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-ne v9, v11, :cond_4

    move-object v0, v5

    .line 93
    check-cast v0, Lorg/w3c/dom/Element;

    .line 94
    .restart local v0    # "e":Lorg/w3c/dom/Element;
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->agpsConfig:Lcom/mediatek/lbs/em2/utils/AgpsConfig;

    invoke-virtual {v9}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getCurSuplProfile()Lcom/mediatek/lbs/em2/utils/SuplProfile;

    move-result-object v7

    .line 95
    .restart local v7    # "profile":Lcom/mediatek/lbs/em2/utils/SuplProfile;
    const-string v9, "name"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;->name:Ljava/lang/String;

    .line 96
    const-string v9, "addr"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addr:Ljava/lang/String;

    .line 97
    const-string v9, "port"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;->port:I

    .line 98
    const-string v9, "tls"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;->tls:Z

    .line 99
    const-string v9, "mcc_mnc"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;->mccMnc:Ljava/lang/String;

    .line 100
    const-string v9, "app_id"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;->appId:Ljava/lang/String;

    .line 101
    const-string v9, "provider_id"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;->providerId:Ljava/lang/String;

    .line 102
    const-string v9, "default_apn"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;->defaultApn:Ljava/lang/String;

    .line 103
    const-string v9, "optional_apn"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn:Ljava/lang/String;

    .line 104
    const-string v9, "optional_apn_2"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn2:Ljava/lang/String;

    .line 105
    const-string v9, "address_type"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addressType:Ljava/lang/String;

    .line 106
    invoke-virtual {v7}, Lcom/mediatek/lbs/em2/utils/SuplProfile;->correctIfInvalid()Z

    .line 90
    .end local v0    # "e":Lorg/w3c/dom/Element;
    .end local v7    # "profile":Lcom/mediatek/lbs/em2/utils/SuplProfile;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 111
    .end local v5    # "nNode":Lorg/w3c/dom/Node;
    :cond_5
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->doc:Lorg/w3c/dom/Document;

    const-string v10, "cdma_profile"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 112
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v1, v9, :cond_7

    .line 113
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 114
    .restart local v5    # "nNode":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-ne v9, v11, :cond_6

    move-object v0, v5

    .line 115
    check-cast v0, Lorg/w3c/dom/Element;

    .line 116
    .restart local v0    # "e":Lorg/w3c/dom/Element;
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->agpsConfig:Lcom/mediatek/lbs/em2/utils/AgpsConfig;

    invoke-virtual {v9}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getCdmaProfile()Lcom/mediatek/lbs/em2/utils/CdmaProfile;

    move-result-object v6

    .line 117
    .local v6, "p":Lcom/mediatek/lbs/em2/utils/CdmaProfile;
    const-string v9, "name"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/mediatek/lbs/em2/utils/CdmaProfile;->name:Ljava/lang/String;

    .line 118
    const-string v9, "mcp_enable"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v6, Lcom/mediatek/lbs/em2/utils/CdmaProfile;->mcpEnable:Z

    .line 119
    const-string v9, "mcp_addr"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/mediatek/lbs/em2/utils/CdmaProfile;->mcpAddr:Ljava/lang/String;

    .line 120
    const-string v9, "mcp_port"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v6, Lcom/mediatek/lbs/em2/utils/CdmaProfile;->mcpPort:I

    .line 121
    const-string v9, "pde_addr_valid"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v6, Lcom/mediatek/lbs/em2/utils/CdmaProfile;->pdeAddrValid:Z

    .line 123
    const-string v9, "pde_ip_type"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v6, Lcom/mediatek/lbs/em2/utils/CdmaProfile;->pdeIpType:I

    .line 124
    const-string v9, "pde_addr"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/mediatek/lbs/em2/utils/CdmaProfile;->pdeAddr:Ljava/lang/String;

    .line 125
    const-string v9, "pde_port"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v6, Lcom/mediatek/lbs/em2/utils/CdmaProfile;->pdePort:I

    .line 126
    const-string v9, "pde_url_valid"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v6, Lcom/mediatek/lbs/em2/utils/CdmaProfile;->pdeUrlValid:Z

    .line 128
    const-string v9, "pde_url_addr"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/mediatek/lbs/em2/utils/CdmaProfile;->pdeUrlAddr:Ljava/lang/String;

    .line 130
    invoke-virtual {v6}, Lcom/mediatek/lbs/em2/utils/CdmaProfile;->correctIfInvalid()Z

    .line 112
    .end local v0    # "e":Lorg/w3c/dom/Element;
    .end local v6    # "p":Lcom/mediatek/lbs/em2/utils/CdmaProfile;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 134
    .end local v5    # "nNode":Lorg/w3c/dom/Node;
    :cond_7
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->doc:Lorg/w3c/dom/Document;

    const-string v10, "agps_setting"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 135
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v1, v9, :cond_9

    .line 136
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 137
    .restart local v5    # "nNode":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-ne v9, v11, :cond_8

    move-object v0, v5

    .line 138
    check-cast v0, Lorg/w3c/dom/Element;

    .line 139
    .restart local v0    # "e":Lorg/w3c/dom/Element;
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->agpsConfig:Lcom/mediatek/lbs/em2/utils/AgpsConfig;

    invoke-virtual {v9}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getAgpsSetting()Lcom/mediatek/lbs/em2/utils/AgpsSetting;

    move-result-object v8

    .line 140
    .local v8, "setting":Lcom/mediatek/lbs/em2/utils/AgpsSetting;
    const-string v9, "agps_enable"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v8, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->agpsEnable:Z

    .line 142
    const-string v9, "agps_protocol"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v8, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->agpsProtocol:I

    .line 144
    const-string v9, "gpevt"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v8, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->gpevt:Z

    .line 146
    invoke-virtual {v8}, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->correctIfInvalid()Z

    .line 135
    .end local v0    # "e":Lorg/w3c/dom/Element;
    .end local v8    # "setting":Lcom/mediatek/lbs/em2/utils/AgpsSetting;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 150
    .end local v5    # "nNode":Lorg/w3c/dom/Node;
    :cond_9
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->doc:Lorg/w3c/dom/Document;

    const-string v10, "cp_setting"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 151
    const/4 v1, 0x0

    :goto_4
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v1, v9, :cond_b

    .line 152
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 153
    .restart local v5    # "nNode":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-ne v9, v11, :cond_a

    move-object v0, v5

    .line 154
    check-cast v0, Lorg/w3c/dom/Element;

    .line 155
    .restart local v0    # "e":Lorg/w3c/dom/Element;
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->agpsConfig:Lcom/mediatek/lbs/em2/utils/AgpsConfig;

    invoke-virtual {v9}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getCpSetting()Lcom/mediatek/lbs/em2/utils/CpSetting;

    move-result-object v8

    .line 156
    .local v8, "setting":Lcom/mediatek/lbs/em2/utils/CpSetting;
    const-string v9, "molr_pos_method"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v8, Lcom/mediatek/lbs/em2/utils/CpSetting;->molrPosMethod:I

    .line 158
    const-string v9, "external_addr_enable"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v8, Lcom/mediatek/lbs/em2/utils/CpSetting;->externalAddrEnable:Z

    .line 160
    const-string v9, "external_addr"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/mediatek/lbs/em2/utils/CpSetting;->externalAddr:Ljava/lang/String;

    .line 161
    const-string v9, "mlc_number_enable"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v8, Lcom/mediatek/lbs/em2/utils/CpSetting;->mlcNumberEnable:Z

    .line 163
    const-string v9, "mlc_number"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/mediatek/lbs/em2/utils/CpSetting;->mlcNumber:Ljava/lang/String;

    .line 164
    const-string v9, "cp_auto_reset"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v8, Lcom/mediatek/lbs/em2/utils/CpSetting;->cpAutoReset:Z

    .line 166
    const-string v9, "epc_molr_lpp_payload_enable"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v8, Lcom/mediatek/lbs/em2/utils/CpSetting;->epcMolrLppPayloadEnable:Z

    .line 168
    const-string v9, "epc_molr_lpp_payload"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v9

    iput-object v9, v8, Lcom/mediatek/lbs/em2/utils/CpSetting;->epcMolrLppPayload:[B

    .line 171
    invoke-virtual {v8}, Lcom/mediatek/lbs/em2/utils/CpSetting;->correctIfInvalid()Z

    .line 151
    .end local v0    # "e":Lorg/w3c/dom/Element;
    .end local v8    # "setting":Lcom/mediatek/lbs/em2/utils/CpSetting;
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 175
    .end local v5    # "nNode":Lorg/w3c/dom/Node;
    :cond_b
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->doc:Lorg/w3c/dom/Document;

    const-string v10, "up_setting"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 176
    const/4 v1, 0x0

    :goto_5
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v1, v9, :cond_d

    .line 177
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 178
    .restart local v5    # "nNode":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-ne v9, v11, :cond_c

    move-object v0, v5

    .line 179
    check-cast v0, Lorg/w3c/dom/Element;

    .line 180
    .restart local v0    # "e":Lorg/w3c/dom/Element;
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->agpsConfig:Lcom/mediatek/lbs/em2/utils/AgpsConfig;

    invoke-virtual {v9}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getUpSetting()Lcom/mediatek/lbs/em2/utils/UpSetting;

    move-result-object v8

    .line 181
    .local v8, "setting":Lcom/mediatek/lbs/em2/utils/UpSetting;
    const-string v9, "ca_enable"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v8, Lcom/mediatek/lbs/em2/utils/UpSetting;->caEnable:Z

    .line 182
    const-string v9, "ni_request"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v8, Lcom/mediatek/lbs/em2/utils/UpSetting;->niRequest:Z

    .line 184
    const-string v9, "roaming"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v8, Lcom/mediatek/lbs/em2/utils/UpSetting;->roaming:Z

    .line 185
    const-string v9, "cdma_preferred"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v8, Lcom/mediatek/lbs/em2/utils/UpSetting;->cdmaPreferred:I

    .line 187
    const-string v9, "pref_method"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v8, Lcom/mediatek/lbs/em2/utils/UpSetting;->prefMethod:I

    .line 189
    const-string v9, "supl_version"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v8, Lcom/mediatek/lbs/em2/utils/UpSetting;->suplVersion:I

    .line 191
    const-string v9, "supl_log"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v8, Lcom/mediatek/lbs/em2/utils/UpSetting;->suplLog:Z

    .line 192
    const-string v9, "msa_enable"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v8, Lcom/mediatek/lbs/em2/utils/UpSetting;->msaEnable:Z

    .line 194
    const-string v9, "msb_enable"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v8, Lcom/mediatek/lbs/em2/utils/UpSetting;->msbEnable:Z

    .line 196
    const-string v9, "ecid_enable"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v8, Lcom/mediatek/lbs/em2/utils/UpSetting;->ecidEnable:Z

    .line 198
    const-string v9, "otdoa_enable"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v8, Lcom/mediatek/lbs/em2/utils/UpSetting;->otdoaEnable:Z

    .line 200
    const-string v9, "qop_hacc"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v8, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopHacc:I

    .line 201
    const-string v9, "qop_vacc"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v8, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopVacc:I

    .line 202
    const-string v9, "qop_loc_age"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v8, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopLocAge:I

    .line 204
    const-string v9, "qop_delay"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v8, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopDelay:I

    .line 206
    const-string v9, "lpp_enable"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v8, Lcom/mediatek/lbs/em2/utils/UpSetting;->lppEnable:Z

    .line 208
    invoke-virtual {v8}, Lcom/mediatek/lbs/em2/utils/UpSetting;->correctIfInvalid()Z

    .line 176
    .end local v0    # "e":Lorg/w3c/dom/Element;
    .end local v8    # "setting":Lcom/mediatek/lbs/em2/utils/UpSetting;
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 211
    .end local v5    # "nNode":Lorg/w3c/dom/Node;
    :cond_d
    return-void
.end method

.method protected static getXmlDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 6
    .param p0, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v4, "fXmlFile":Ljava/io/File;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 228
    .local v1, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x0

    .line 230
    .local v2, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 231
    .local v0, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 237
    return-object v2

    .line 232
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_0
    move-exception v3

    .line 233
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 234
    .end local v3    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v3

    .line 235
    .local v3, "e":Lorg/xml/sax/SAXException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 242
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 243
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 244
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 243
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 247
    :cond_0
    return-object v0
.end method

.method protected static log(Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/Object;

    .prologue
    .line 251
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 252
    return-void
.end method

.method protected static loge(Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/Object;

    .prologue
    .line 255
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 19
    const/4 v1, 0x0

    .line 21
    .local v1, "xml":Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;
    :try_start_0
    new-instance v2, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;

    const-string v3, "./xml/agps_profiles_conf2.xml"

    invoke-direct {v2, v3}, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "xml":Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;
    .local v2, "xml":Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;
    move-object v1, v2

    .line 25
    .end local v2    # "xml":Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;
    .restart local v1    # "xml":Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;
    :goto_0
    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->log(Ljava/lang/Object;)V

    .line 26
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAgpsConfig()Lcom/mediatek/lbs/em2/utils/AgpsConfig;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->agpsConfig:Lcom/mediatek/lbs/em2/utils/AgpsConfig;

    return-object v0
.end method

.method public getVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->versionString:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 218
    const-string v0, ""

    .line 219
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->versionString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/MtkAgpsXmlParser;->agpsConfig:Lcom/mediatek/lbs/em2/utils/AgpsConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    return-object v0
.end method
