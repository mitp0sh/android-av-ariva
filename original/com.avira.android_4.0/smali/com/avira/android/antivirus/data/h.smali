.class public final Lcom/avira/android/antivirus/data/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/antivirus/data/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:I


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/avira/android/antivirus/data/h;->a:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/avira/android/antivirus/data/h;->b:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/avira/android/antivirus/data/h;->c:[Ljava/lang/String;

    .line 18
    iput p3, p0, Lcom/avira/android/antivirus/data/h;->d:I

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/avira/android/antivirus/data/h;->a:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public final a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/avira/android/antivirus/data/h;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/avira/android/antivirus/data/h;->d:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avira/android/antivirus/data/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Lcom/avira/android/antivirus/data/c;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/avira/android/antivirus/data/c;->SECTION:Lcom/avira/android/antivirus/data/c;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method
