.class public final Lcom/avira/android/antivirus/data/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/antivirus/data/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/avira/android/antivirus/data/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/avira/android/antivirus/data/c;->EMPTY:Lcom/avira/android/antivirus/data/c;

    invoke-direct {p0, p1, v0}, Lcom/avira/android/antivirus/data/f;-><init>(Ljava/lang/String;Lcom/avira/android/antivirus/data/c;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/avira/android/antivirus/data/c;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/avira/android/antivirus/data/f;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/avira/android/antivirus/data/f;->b:Lcom/avira/android/antivirus/data/c;

    .line 18
    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/avira/android/antivirus/data/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Lcom/avira/android/antivirus/data/c;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/avira/android/antivirus/data/f;->b:Lcom/avira/android/antivirus/data/c;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method
