.class final Lcom/avira/android/antitheft/activities/a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;

.field private final b:Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;


# direct methods
.method public constructor <init>(Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/avira/android/antitheft/activities/a;->a:Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 133
    iput-object p2, p0, Lcom/avira/android/antitheft/activities/a;->b:Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;

    .line 134
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/avira/android/antitheft/activities/a;->b:Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;

    invoke-virtual {v0}, Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;->finish()V

    .line 140
    return-void
.end method
