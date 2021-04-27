% Reading Information About Video Files
% 1. Read information about the original.avi ﬁle and save it in a local variable.
file_name = 'What Do You See Song.mp4';
file_info = VideoReader(file_name);

% 2. View the video compression and the number of frames for this ﬁle.
file_info.VideoCompression
file_info.NumFrames

% 3. Load the example.avi ﬁle using the aviread function.
% my_movie = implay(file_name);

% 4. Load frames 5, 10, 15, and 20.
frame_nums = [5 10 15 20];
my_movie2 = implay(file_name, frame_nums);
