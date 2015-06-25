.class public interface abstract Lio/fabric/sdk/android/services/d/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lio/fabric/sdk/android/services/d/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 350
    new-instance v0, Lio/fabric/sdk/android/services/d/i;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/d/i;-><init>()V

    sput-object v0, Lio/fabric/sdk/android/services/d/h;->DEFAULT:Lio/fabric/sdk/android/services/d/h;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.end method

.method public abstract a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
.end method
