.class final Lcom/avira/android/facebookconnect/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/facebookconnect/b;


# direct methods
.method constructor <init>(Lcom/avira/android/facebookconnect/b;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/avira/android/facebookconnect/c;->a:Lcom/avira/android/facebookconnect/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 241
    invoke-static {}, Lcom/avira/android/vdfupdate/i;->d()V

    .line 242
    return-void
.end method
