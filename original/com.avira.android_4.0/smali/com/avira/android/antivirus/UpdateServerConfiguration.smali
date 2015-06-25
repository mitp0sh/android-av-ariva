.class public Lcom/avira/android/antivirus/UpdateServerConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mProxyPort:Ljava/lang/String;

.field private mProxyServer:Ljava/lang/String;

.field private mUpdateServer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/avira/android/antivirus/UpdateServerConfiguration;->mUpdateServer:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/avira/android/antivirus/UpdateServerConfiguration;->mProxyServer:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/avira/android/antivirus/UpdateServerConfiguration;->mProxyPort:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getProxyPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avira/android/antivirus/UpdateServerConfiguration;->mProxyPort:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/avira/android/antivirus/UpdateServerConfiguration;->mProxyServer:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/avira/android/antivirus/UpdateServerConfiguration;->mUpdateServer:Ljava/lang/String;

    return-object v0
.end method

.method public setProxyPort(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/avira/android/antivirus/UpdateServerConfiguration;->mProxyPort:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setProxyServer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/avira/android/antivirus/UpdateServerConfiguration;->mProxyServer:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setUpdateServer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/avira/android/antivirus/UpdateServerConfiguration;->mUpdateServer:Ljava/lang/String;

    .line 24
    return-void
.end method
