.class public final Lcom/avira/android/securebrowsing/c/p;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:Lcom/avira/android/securebrowsing/c/o;


# direct methods
.method public constructor <init>(Lcom/avira/android/securebrowsing/c/o;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 909
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 910
    iput-object p1, p0, Lcom/avira/android/securebrowsing/c/p;->a:Lcom/avira/android/securebrowsing/c/o;

    .line 911
    return-void
.end method

.method public constructor <init>(Lcom/avira/android/securebrowsing/c/o;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 915
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 916
    iput-object p1, p0, Lcom/avira/android/securebrowsing/c/p;->a:Lcom/avira/android/securebrowsing/c/o;

    .line 917
    return-void
.end method


# virtual methods
.method public final a()Lcom/avira/android/securebrowsing/c/o;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/p;->a:Lcom/avira/android/securebrowsing/c/o;

    return-object v0
.end method
