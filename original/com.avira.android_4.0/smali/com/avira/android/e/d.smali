.class final Lcom/avira/android/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/e/c;


# static fields
.field private static final MD5_TAG:Ljava/lang/String; = "MD5"


# instance fields
.field private a:Lcom/avira/android/e/a;


# direct methods
.method public constructor <init>(Lcom/avira/android/e/a;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/avira/android/e/d;->a:Lcom/avira/android/e/a;

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avira/android/e/d;->a:Lcom/avira/android/e/a;

    const-string v0, "MD5"

    invoke-static {p1, v0}, Lcom/avira/android/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
